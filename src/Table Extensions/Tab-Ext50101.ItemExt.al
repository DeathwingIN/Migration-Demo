tableextension 50101 "Item Ext" extends item
{
    fields
    {
        field(50004; "Block Sales Order"; Boolean)
        {
            InitValue = false;

            trigger OnValidate()
            begin
                // TODO: Need to add validation logic with Process Line 
                // IF xRec."Block Sales Order" <> Rec."Block Sales Order" THEN BEGIN
                //     ProcessLine.RESET;
                //     IF ProcessLine.GET(ProcessLine."Document Type"::Quote, Rec."CRM Quote No", Rec."Quote Line No", Rec."Process Line No.") THEN BEGIN
                //         IF Rec."Block Sales Order" THEN
                //             ProcessLine."NAV Status" := 'INACTIVE'
                //         ELSE
                //             ProcessLine."NAV Status" := 'ACTIVE';
                //         IF ProcessLine.MODIFY THEN;
                //     END;
                // END;
            end;
        }

        field(50045; "Min Charge"; Decimal)
        {
        }

        field(50063; "EPC"; Boolean)
        {
        }

        field(50080; "Bake Tag Required"; Boolean)
        {
        }

        field(50100; "CRM Quote No"; Code[20])
        {
        }

        field(50101; "Customer No"; Code[20])
        {
            TableRelation = Customer."No.";
        }

        field(50103; "Plant Id"; Code[10])
        {
            TableRelation = Facility."Plant Id";
        }

        field(50105; "Multi-Process Item"; Boolean)
        {
            Editable = false;
        }

        field(50109; "Mechanical BOM No."; Code[20])
        {
            TableRelation = "Production BOM Header";
        }

        field(50110; "Mechanical Item"; Boolean)
        {
        }

        field(50111; "Process Line No."; Integer)
        {
            Editable = false;
        }

        field(50112; "Quote Line No"; Integer)
        {
        }

        field(50133; "Alternate Loading"; Boolean)
        {
        }

        field(50141; "Separate Min. Charge"; Boolean)
        {
        }

        field(50147; "Tooling Required"; Boolean)
        {
            Editable = true;
        }

        field(50149; "Plant Hold"; Boolean)
        {
            trigger OnValidate()
            begin
                // PlantHoldAccess; //TODO: Validation Related to UserPersonalization 
            end;
        }

        field(50150; "Plant Hold Reason"; Text[80])
        {
            trigger OnValidate()
            begin
                // PlantHoldAccess; //TODO: Validation Related to UserPersonalization 
            end;
        }
    }
}
