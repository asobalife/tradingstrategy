# this script moves the hardcoded report from the server
# into a function so it can by run by the shiny download handler
# this script can be merged in one of the other scripts if needed

indicator_report <- function(
  symb,
  RSI,
  ind1_inp1,
  RSI0,
  ind1_inp4,
  CCI,
  ind1_inp2,
  CCI0,
  ind1_inp5,
  BB,
  ind1_inp3,
  BB0,
  ind1_inp6,
  SMA,
  ind1_inp7,
  SMA0,
  ind1_inp10,
  SMI,
  ind1_inp8,
  SMI0,
  ind1_inp11,
  SAR,
  ind1_inp9,
  SAR0,
  ind1_inp12,
  RSI1,
  ind2_inp1,
  RSI10,
  ind2_inp4,
  CCI1,
  ind2_inp2,
  CCI10,
  ind2_inp5,
  BB1,
  ind2_inp3,
  BB10,
  ind2_inp6,
  SMA1,
  ind2_inp7,
  SMA10,
  ind2_inp10,
  SMI1,
  ind2_inp8,
  SMI10,
  ind2_inp11,
  SAR1,
  ind2_inp9,
  SAR10,
  ind2_inp12,
  dataInput5,
  resultbuy,
  resultsell,
  filename
) {
  fprintf("\nReport of Back Testing the trading strategy:\n", file = filename)
  fprintf("\nThis is the trading strategy:\n",
          file = filename,
          append = TRUE)
  fprintf("\nBuy:", file = filename, append = TRUE)
  fprintf(
    "\nRSI:T-1 %s %s -T %s %s",
    RSI,
    if (ind1_inp1 == "") {
      "not filled"
    } else{
      ind1_inp1
    },
    RSI0,
    if (ind1_inp4 == "") {
      "not filled"
    } else{
      ind1_inp4
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\nCCI:T-1 %s %s -T %s %s",
    CCI,
    if (ind1_inp2 == "") {
      "not filled"
    } else{
      ind1_inp2
    },
    CCI0,
    if (ind1_inp5 == "") {
      "not filled"
    } else{
      ind1_inp5
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n BB:T-1 %s %s -T %s %s",
    BB,
    if (ind1_inp3 == "") {
      "not filled"
    } else{
      ind1_inp3
    },
    BB0,
    if (ind1_inp6 == "") {
      "not filled"
    } else{
      ind1_inp6
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\nSMA:T-1 %s %s -T %s %s",
    SMA,
    if (ind1_inp7 == "") {
      "not filled"
    } else{
      ind1_inp7
    },
    SMA0,
    if (ind1_inp10 == "") {
      "not filled"
    } else{
      ind1_inp10
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\nSMI:T-1 %s %s -T %s %s",
    SMI,
    if (ind1_inp8 == "") {
      "not filled"
    } else{
      ind1_inp8
    },
    SMI0,
    if (ind1_inp11 == "") {
      "not filled"
    } else{
      ind1_inp11
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\nSAR:T-1 %s %s -T %s %s",
    SAR,
    if (ind1_inp9 == "") {
      "not filled"
    } else{
      ind1_inp9
    },
    SAR0,
    if (ind1_inp12 == "") {
      "not filled"
    } else{
      ind1_inp12
    },
    file = filename,
    append = TRUE
  )
  fprintf("\nSell:", file = filename, append = TRUE)
  fprintf(
    "\nRSI:T-1 %s %s -T %s %s",
    RSI1,
    if (ind2_inp1 == "") {
      "not filled"
    } else{
      ind2_inp1
    },
    RSI10,
    if (ind2_inp4 == "") {
      "not filled"
    } else{
      ind2_inp4
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\nCCI:T-1 %s %s -T %s %s",
    CCI1,
    if (ind2_inp2 == "") {
      "not filled"
    } else{
      ind2_inp2
    },
    CCI10,
    if (ind2_inp5 == "") {
      "not filled"
    } else{
      ind2_inp5
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n BB:T-1 %s %s -T %s %s",
    BB1,
    if (ind2_inp3 == "") {
      "not filled"
    } else{
      ind2_inp3
    },
    BB10,
    if (ind2_inp6 == "") {
      "not filled"
    } else{
      ind2_inp6
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\nSMA:T-1 %s %s -T %s %s",
    SMA1,
    if (ind2_inp7 == "") {
      "not filled"
    } else{
      ind2_inp7
    },
    SMA10,
    if (ind2_inp10 == "") {
      "not filled"
    } else{
      ind2_inp10
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\nSMI:T-1 %s %s -T %s %s",
    SMI1,
    if (ind2_inp8 == "") {
      "not filled"
    } else{
      ind2_inp8
    },
    SMI10,
    if (ind2_inp11 == "") {
      "not filled"
    } else{
      ind2_inp11
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\nSAR:T-1 %s %s -T %s %s",
    SAR1,
    if (ind2_inp9 == "") {
      "not filled"
    } else{
      ind2_inp9
    },
    SAR10,
    if (ind2_inp12 == "") {
      "not filled"
    } else{
      ind2_inp12
    },
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n*************************************************************************************",
    file = filename,
    append = TRUE
  )
  fprintf("\nBuy trades:\n", file = filename, append = TRUE)
  fprintf(
    "\n ____________________________________________________________________________________",
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n| %10s |   %10s |  %10s |  %15s |  %20s |",
    "Date",
    "Stock Name",
    "Buy",
    "How many shares",
    "Transaction Price",
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n ====================================================================================",
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n| %10s |   %10s |  %10s |  %15s |  %20.2f |",
    resultbuy()[resultbuy()[, 2] == 1, 3],
    symb,
    resultbuy()[resultbuy()[, 2] == 1, 1],
    "1",
    resultbuy()[resultbuy()[, 2] == 1, 4],
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n*************************************************************************************\n",
    file = filename,
    append = TRUE
  )
  fprintf("\nSell trades:\n", file = filename, append = TRUE)
  fprintf(
    "\n ____________________________________________________________________________________",
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n| %10s |   %10s |  %10s |  %15s |  %20s |",
    "Date",
    "Stock Name",
    "Buy",
    "How many shares",
    "Transaction Price",
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n ====================================================================================",
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n| %10s |   %10s |  %10s |  %15s |  %20.2f |",
    resultsell()[resultsell()[, 2] == 1, 3],
    symb,
    resultsell()[resultsell()[, 2] == 1, 1],
    "1",
    resultsell()[resultsell()[, 2] == 1, 4],
    file = filename,
    append = TRUE
  )
  fprintf(
    "\n*************************************************************************************\n",
    file = filename,
    append = TRUE
  )
  fprintf("\ntotal Buy = %6.2f",
          sum(resultbuy()[resultbuy()[, 2] == 1, 4]),
          file = filename,
          append = TRUE)
  fprintf("\ntotal Sell = %6.2f",
          sum(resultsell()[resultsell()[, 2] == 1, 4]),
          file = filename,
          append = TRUE)
  fprintf(
    "\nrealized Earning = %6.2f",
    round(
      dataInput5()[length(dataInput5()[, 4]), 4] * (sum(resultbuy()[, 2]) - sum(resultsell()[, 2])) +
        sum(resultsell()[resultsell()[, 2] == 1, 4]) - sum(resultbuy()[resultbuy()[, 2] == 1, 4]),
      2
    ),
    file = filename,
    append = TRUE
  )
}