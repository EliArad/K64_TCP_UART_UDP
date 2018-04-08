#include "board.h"
#include "fsl_uart_edma.h"
#include "fsl_dmamux.h"
#include "fsl_debug_console.h"

#include "pin_mux.h"
#include "clock_config.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/
/* UART instance and clock */
#define DEMO_UART UART3
#define DEMO_UART_CLKSRC UART3_CLK_SRC
#define DEMO_UART_CLK_FREQ CLOCK_GetFreq(UART3_CLK_SRC)
#define UART_TX_DMA_CHANNEL 0U
#define UART_RX_DMA_CHANNEL 1U
#define EXAMPLE_UART_DMAMUX_BASEADDR DMAMUX0
#define EXAMPLE_UART_DMA_BASEADDR DMA0
#define UART_TX_DMA_REQUEST kDmaRequestMux0UART3Tx
#define UART_RX_DMA_REQUEST kDmaRequestMux0UART3Rx
#define ECHO_BUFFER_LENGTH 2000




/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/* UART user callback */
void UART_UserCallback(UART_Type *base, uart_edma_handle_t *handle, status_t status, void *userData);

/*******************************************************************************
 * Variables
 ******************************************************************************/


uart_config_t uartConfig;
edma_config_t config;
uart_transfer_t xfer;
uart_transfer_t sendXfer;
uart_transfer_t receiveXfer;

uart_edma_handle_t g_uartEdmaHandle;
edma_handle_t g_uartTxEdmaHandle;
edma_handle_t g_uartRxEdmaHandle;
uint8_t g_tipString[] = "UART EDMA example\r\nSend back received data\r\nEcho every 8 characters\r\n";
uint8_t g_txBuffer[ECHO_BUFFER_LENGTH] = {0};
uint8_t g_rxBuffer[ECHO_BUFFER_LENGTH] = {0};
volatile bool rxBufferEmpty = true;
volatile bool txBufferFull = false;
volatile bool txOnGoing = false;
volatile bool rxOnGoing = false;

/*******************************************************************************
 * Code
 ******************************************************************************/

/* UART user callback */
void UART_UserCallback(UART_Type *base, uart_edma_handle_t *handle, status_t status, void *userData)
{
    userData = userData;


    if (kStatus_UART_TxIdle == status)
    {
        txBufferFull = false;
        txOnGoing = false;
    }

    if (kStatus_UART_RxIdle == status)
    {
        rxBufferEmpty = false;
        rxOnGoing = false;
        PRINTF("%s\n" , receiveXfer.data);
    }
}



int StartUART(void)
{



    /* Initialize the UART. */
    /*
     * uartConfig.baudRate_Bps = 115200U;
     * uartConfig.parityMode = kUART_ParityDisabled;
     * uartConfig.stopBitCount = kUART_OneStopBit;
     * uartConfig.txFifoWatermark = 0;
     * uartConfig.rxFifoWatermark = 1;
     * uartConfig.enableTx = false;
     * uartConfig.enableRx = false;
     */
    UART_GetDefaultConfig(&uartConfig);
    uartConfig.baudRate_Bps = BOARD_DEBUG_UART_BAUDRATE;
    uartConfig.enableTx = true;
    uartConfig.enableRx = true;

    UART_Init(DEMO_UART, &uartConfig, DEMO_UART_CLK_FREQ);

    /* Init DMAMUX */
    DMAMUX_Init(EXAMPLE_UART_DMAMUX_BASEADDR);
    /* Set channel for UART */
    DMAMUX_SetSource(EXAMPLE_UART_DMAMUX_BASEADDR, UART_TX_DMA_CHANNEL, UART_TX_DMA_REQUEST);
    DMAMUX_SetSource(EXAMPLE_UART_DMAMUX_BASEADDR, UART_RX_DMA_CHANNEL, UART_RX_DMA_REQUEST);
    DMAMUX_EnableChannel(EXAMPLE_UART_DMAMUX_BASEADDR, UART_TX_DMA_CHANNEL);
    DMAMUX_EnableChannel(EXAMPLE_UART_DMAMUX_BASEADDR, UART_RX_DMA_CHANNEL);

    /* Init the EDMA module */
    EDMA_GetDefaultConfig(&config);
    EDMA_Init(EXAMPLE_UART_DMA_BASEADDR, &config);
    EDMA_CreateHandle(&g_uartTxEdmaHandle, EXAMPLE_UART_DMA_BASEADDR, UART_TX_DMA_CHANNEL);
    EDMA_CreateHandle(&g_uartRxEdmaHandle, EXAMPLE_UART_DMA_BASEADDR, UART_RX_DMA_CHANNEL);

    /* Create UART DMA handle. */
    UART_TransferCreateHandleEDMA(DEMO_UART, &g_uartEdmaHandle, UART_UserCallback, NULL, &g_uartTxEdmaHandle,
                                  &g_uartRxEdmaHandle);


#if 0
    /* Send g_tipString out. */
    xfer.data = g_tipString;
    xfer.dataSize = sizeof(g_tipString) - 1;
    txOnGoing = true;
    UART_SendEDMA(DEMO_UART, &g_uartEdmaHandle, &xfer);

    /* Wait send finished */
    while (txOnGoing)
    {
    }
#endif

    /* Start to echo. */
    sendXfer.data = g_tipString; //g_txBuffer;
    sendXfer.dataSize = strlen(g_tipString);
    receiveXfer.data = g_rxBuffer;
    receiveXfer.dataSize = 8;

    PRINTF("Start UArt loop receive\n");
    while (1)
    {

        /* If RX is idle and g_rxBuffer is empty, start to read data to g_rxBuffer. */
        if (!rxOnGoing)
        {
        	PRINTF("engage receive\n");
            rxOnGoing = true;
            if (UART_ReceiveEDMA(DEMO_UART, &g_uartEdmaHandle, &receiveXfer) != kStatus_Success)
            {
            	PRINTF("Busy\n");
            }
        }

#if 0
        /* If TX is idle and g_txBuffer is full, start to send data. */
        if (!txOnGoing)
        {
            txOnGoing = true;
            PRINTF("Sending..\n");
            UART_SendEDMA(DEMO_UART, &g_uartEdmaHandle, &sendXfer);
        }
#endif

    }
}
