// This program prompts and reads a province and a taxable income.  Then,
// using if-else structures, the tax rate is computed for the province
// and the taxable income.  The tax rate and the net income are illustrated
// using a simple bar chart 

size(500, 500);
background(220);

import javax.swing.JOptionPane;


//Input Variables
String prov_id = "";                  //province_id will contain the user input for the province (E.g. 'AB'). 
float gross_income = 0;               //gorss_income contains the user input for gross income (E.g. 30000). 

//Output Variables:
//You will store the result of your analysis and calculations in these variables
float tax_rate = 0;                        //Variable tax_rate will hold the tax_rate percentage. You will assign a value for tax_rate based on the Taxable Income (Table 1) table given in the studio project document. 
//The value of tax ranges between 0 to 1 (E.g. for Alberta, income of equal or less than $40000 tax = 0.25)

float net_income = 0;                     //Net income is calculated based on tax_rate. It is the take-home income after taxes are deducted. 
//i.e. net_income = gross_income * (1 - tax_rate); 

float tax_amount = 0;                    //tax amount is the amount of taxes paid based on gross income depending on the province.
//i.e. tax_amount = gross_income * tax_rate;

// prompt for and read the province id 
prov_id = JOptionPane.showInputDialog("Please enter your province's two-letter abbreviation (e.g., AB for Alberta): ");

// prompt for and read the gross income
String answer = JOptionPane.showInputDialog("Please enter your taxable income: ");

//convert user input to folat
gross_income = Float.parseFloat(answer);



// Alberta
if ( prov_id.equals("AB") || prov_id.equals("ab"))
{
  if (gross_income >= 0.00 && gross_income < 40000.00) {
    tax_rate = 25.00;
  } else if (gross_income >= 40000.00 && gross_income < 80000.00) {
    tax_rate = 32.00;
  } else if (gross_income >= 80000.00 && gross_income < 120000.00) {
    tax_rate = 36.00;
  } else if (gross_income >= 120000.00) {
    tax_rate = 39.00;
  }
}

// British Columbia
if (prov_id.equals("BC") || prov_id.equals("bc")) {
  if (gross_income >= 0.00 && gross_income < 20000.00) {
    tax_rate = 20.00;
  } else if (gross_income >= 20000.00 && gross_income < 35000.00) {
    tax_rate = 22.50;
  } else if (gross_income >= 35000.00 && gross_income < 50000.00) {
    tax_rate = 30.00;
  } else if (gross_income >= 50000.00 && gross_income < 65000.00) {
    tax_rate = 32.50;
  } else if (gross_income >= 65000.00 && gross_income < 80000.00) {
    tax_rate = 36.50;
  } else if (gross_income >= 80000.00 && gross_income < 100000.00) {
    tax_rate = 39.30;
  } else if (gross_income >= 100000.00 && gross_income < 120000.00) {
    tax_rate = 41.00;
  } else if (gross_income >= 120000.00) {
    tax_rate = 44.00;
  }
}

// Saskatchewan and Ontario
if (prov_id.equals("SK") || prov_id.equals("sk") || prov_id.equals("ON") || prov_id.equals("on")) {
  if (gross_income >= 0.00 && gross_income < 40000.00) {
    tax_rate = 25.00;
  } else if (gross_income >= 40000.00 && gross_income < 60000.00) {
    tax_rate = 30.00;
  } else if (gross_income >= 60000.00 && gross_income < 80000.00) {
    tax_rate = 35.00;
  } else if (gross_income >= 80000.00 && gross_income < 100000.00) {
    tax_rate = 40.00;
  } else if (gross_income >= 100000.00 && gross_income < 120000.00) {
    tax_rate = 45.00;
  } else if (gross_income >= 120000.00) {
    tax_rate = 50.00;
  }
}

tax_amount = gross_income * (tax_rate / 100);
net_income = gross_income * (1 - tax_rate / 100);

textSize(12);
fill(98, 67, 67);
text("Province:", 50, 50);
text(prov_id, 200, 50);
fill(74, 35, 250);
text("Gross Income:" , 50, 100);
text("$" + nfc(gross_income, 2), 200, 100);
fill(0);
text("Tax Rate:", 50, 150);
text(nfc(tax_rate, 2) + "%", 200, 150);
fill(227, 14, 7);
text("Tax Amount:", 50, 200);
text("$" + nfc(tax_amount, 2), 200, 200);
fill(25, 200, 60);
text("Net Income:", 50, 250);
text("$" + nfc(net_income, 2) , 200, 250);

fill(74, 35, 250);
rect(100, 400, 300, 10);

fill(25, 200, 60);
rect(100, 350, 300, 10);

fill(227, 14, 7);
rect(100, 350, tax_rate * 3, 10);
