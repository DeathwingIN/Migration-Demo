codeunit 50001 "Acadian Sales Line Mgt"
{
    //This codeunit will handle all custom logic related to the Sales Line. 

    procedure SplitSalesOrderLine(var SalesHeader: Record "Sales Header")
    begin
        // TODO: Port C/AL logic from CU 50028 "Sales Order Management" (function SplitSalesOrderLine) here.
        // This function will read Customer."Enable Split Order" and SalesLine."No. Of Bins"
        // to create new sales lines and delete the original.
    end;

    procedure BinQuantityControl(SalesLine: Record "Sales Line"; xSalesLine: Record "Sales Line"): Boolean
    begin
        // TODO: Port C/AL logic from CU 50028 "Sales Order Management" (function BinQuantityControl) here.
        //
        exit(false);
    end;
}
