codeunit 50005 "Acadian Work Order Subscriber"
{
    // -------------------------------------------------------------------------
    // EVENT 1: Validate "No. of Bins" on Sales Line
    // Source: CU 50028 "Sales Order Management" -> OnSalesLineNoOfBinValidate
    // Logic: Prevent changing bins if a Prod Order already exists.
    // -------------------------------------------------------------------------

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeValidateEvent', 'No. Of Bins', false, false)]
    local procedure OnBeforeValidateNoOfBins(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; CurrFieldNo: Integer)
    var
        ProdOrder: Record "Production Order";
    begin
        if (xRec."No. Of Bins" <> 0) and (Rec."No. Of Bins" <> xRec."No. Of Bins") then begin
            ProdOrder.SetRange("Sales Line Doc. No.", Rec."Document No.");
            ProdOrder.SetRange("Sales Line Line No.", Rec."Line No.");
            if not ProdOrder.IsEmpty then
                Error('No. of Bins cannot be changed because a Production Order already exists for this line.');
        end;
    end;


    // -------------------------------------------------------------------------
    // EVENT 2: Validate "Quantity" on Sales Line
    // Source: CU 50028 "Sales Order Management" -> OnSalesLineQtyValidate
    // Logic: Prevent changing quantity if a Prod Order already exists.
    // -------------------------------------------------------------------------

    [EventSubscriber(ObjectType::Table, Database::"Production Order", 'OnBeforeDeleteEvent', '', false, false)]
    local procedure OnBeforeDeleteProdOrder(var Rec: Record "Production Order"; RunTrigger: Boolean)
    begin
        if Rec.Status = Rec.Status::Released then begin
            // TODO: Port the specific validation logic from Table 5405 OnDelete trigger here.
            //
        end;
    end;

}
