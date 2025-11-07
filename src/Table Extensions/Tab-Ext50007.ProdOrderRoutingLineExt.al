tableextension 50007 "Prod. Order Routing Line Ext" extends "Prod. Order Routing Line"
{
    fields
    {
        field(50016; "Sequence"; Integer)
        {
            Caption = 'Sequence';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                ProdOrderRoutingLine_gRec: Record "Prod. Order Routing Line";
                ProdOrder_gRec: Record "Production Order";
            begin
                IF Sequence <> 0 THEN BEGIN
                    ProdOrderRoutingLine_gRec.RESET;
                    ProdOrderRoutingLine_gRec.SETRANGE("Prod. Order No.", "Prod. Order No.");
                    ProdOrderRoutingLine_gRec.SETFILTER("Operation No.", '<>%1', "Operation No.");
                    IF ProdOrderRoutingLine_gRec.FINDSET THEN
                        REPEAT
                            ProdOrderRoutingLine_gRec.Sequence := Sequence;
                            ProdOrderRoutingLine_gRec.MODIFY;
                        UNTIL ProdOrderRoutingLine_gRec.NEXT = 0;
                    ProdOrder_gRec.RESET;
                    ProdOrder_gRec.SETRANGE("No.", "Prod. Order No.");
                    IF ProdOrder_gRec.FINDFIRST THEN BEGIN
                        ProdOrder_gRec.Sequence := Sequence;
                        ProdOrder_gRec.MODIFY;
                    END;
                END;
            end;
        }
        field(50067; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            DataClassification = ToBeClassified;
        }
    }
}
