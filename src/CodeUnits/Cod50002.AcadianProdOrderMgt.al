codeunit 50002 "Acadian Prod. Order Mgt"
{
    // This will be the "Work Order Engine." It will be responsible for all logic related to creating and modifying Production Orders. This is where we will untangle the logic from  standard tables.
    //standard production order tables (5406, 5407, 5409) will become 100% clean of this custom code.


    procedure CreateWorkOrdersFromSales(var SalesHeader: Record "Sales Header")
    var
        SalesPlanningLine: Record "Sales Planning Line" temporary;
    begin
        // TODO: Port C/AL logic from CU 50021 (MakeMultiLines & CreateMultipleWorkOrderFromPlanning_C85) here.
        // This function will populate the Temp SalesPlanningLine.
        //

        // After populating, loop and call the creation function.
        if SalesPlanningLine.FindSet() then
            repeat
                CreateProdOrderFromPlanning(SalesPlanningLine, SalesHeader);
            until SalesPlanningLine.Next() = 0;
    end;

    local procedure CreateProdOrderFromPlanning(var SalesPlanningLine: Record "Sales Planning Line"; var SalesHeader: Record "Sales Header")
    var
        SalesLine: Record "Sales Line";
        ProdOrder: Record "Production Order";
    begin
        // TODO: Port C/AL logic from CU 99000792 (function SecondCreateMultipleProdOrder) here.
        // This function creates the Prod. Order Header.
        //

        // 1. Create Prod. Order Header (T-5405)
        // ... (ProdOrder.Insert) ...

        // 2. Get the related Sales Line
        // SalesLine.Get(SalesPlanningLine."Document Type", SalesPlanningLine."Document No.", SalesPlanningLine."Multi Prod. Sales Line No");

        // 3. Call functions to create lines
        CreateProdOrderLine(ProdOrder, SalesLine);
        CreateProdOrderComponent(ProdOrder, SalesLine);
        CreateProdOrderRouting(ProdOrder, SalesLine);
    end;

    local procedure CreateProdOrderLine(var ProdOrder: Record "Production Order"; var SalesLine: Record "Sales Line")
    var
    //ProdOrderLine: Record "";
    begin
        // TODO: Port C/AL logic from Table 5406 "Prod. Order Line" (function CreateFromSalesLine) here.
    end;

    local procedure CreateProdOrderComponent(var ProdOrder: Record "Production Order"; var SalesLine: Record "Sales Line")
    var
        ProdOrderComponent: Record "Prod. Order Component";
        ProdBOMHeader: Record "Production BOM Header";
        ProdBOMLine: Record "Production BOM Line";
    begin
        // TODO: Port C/AL logic from Table 5407 "Prod. Order Component" (function CreateFromSalesLine) here.
        // This logic reads from T-99000771 and T-99000772.
        //
    end;

    local procedure CreateProdOrderRouting(var ProdOrder: Record "Production Order"; var SalesLine: Record "Sales Line")
    var
        ProdOrderRoutingLine: Record "Prod. Order Routing Line";
        RoutingHeader: Record "Routing Header";
        RoutingLine: Record "Routing Line";
    begin
        // TODO: Port C/AL logic from Table 5409 "Prod. Order Routing Line" (function CreateFromSalesLine) here.
        // This logic reads from T-99000763 and T-99000764.
        //
    end;

}
