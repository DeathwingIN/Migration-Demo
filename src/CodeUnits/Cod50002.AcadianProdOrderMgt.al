codeunit 50002 "Acadian Prod. Order Mgt"
{
    // This will be the "Work Order Engine." It will be responsible for all logic related to creating and modifying Production Orders. This is where we will untangle the logic from  standard tables.
    //standard production order tables (5406, 5407, 5409) will become 100% clean of this custom code.


    //TODO: CreateWorkOrdersFromSales(SalesHeader): We will move the logic from CU 50021 "Create Multiple WorkOrders" (functions MakeMultiLines and CreateMultipleWorkOrderFromPlanning_C85)  into this new function. It will be responsible for creating the temporary Sales Planning Lines .
    //TODO:CreateProdOrderFromPlanning(SalesPlanningLine, ...): We will move the custom function SecondCreateMultipleProdOrder from CU 99000792 into this new function.
    //TODO: CreateProdOrderLine(ProdOrder, SalesLine, ...): We will move the custom CreateFromSalesLine C/AL code from Table 5406 "Prod. Order Line"  into this new function.
    //TODO:CreateProdOrderComponent(ProdOrder, SalesLine, ...): We will move the custom CreateFromSalesLine C/AL code from Table 5407 "Prod. Order Component"  into this new function.
    //TODO:CreateProdOrderRouting(ProdOrder, SalesLine, ...): We will move the custom CreateFromSalesLine C/AL code from Table 5409 "Prod. Order Routing Line"  into this new function.


}
