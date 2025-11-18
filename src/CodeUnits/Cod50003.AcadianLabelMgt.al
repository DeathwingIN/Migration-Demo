codeunit 50003 "Acadian Label Mgt"
{
    //This codeunit will handle all logic for printing your custom labels.

    procedure AutoPrint4X6(SalesHeader: Record "Sales Header")
    var
    //TODO:WorkOrderLabel4x6: Report "Work Order Label 4x6";
    begin
        // TODO: Port C/AL logic from CU 50010 (function AutoPrint4X6) here.
        // This function will set up and run Report 50026.
        //
    end;

    procedure PrintBakeTags(SalesHeader: Record "Sales Header")
    var
    //TODO:BakeTag: Report "Bake Tag";
    begin
        // TODO: Port C/AL logic from CU 50010 (function PrintBakeTags) here.
        // This function will set up and run Report 50002.
        //
    end;

    procedure ReprintShippingLabel(SalesHeader: Record "Sales Header")
    var
    //TODO:ReprintShipmentLabel: Report "Reprint Shipment Label";
    begin
        // TODO: Port C/AL logic from Page 50083 (action "Reprint Shipping Label") here.
        // This function will set up and run Report 50254.
        //
    end;

}
