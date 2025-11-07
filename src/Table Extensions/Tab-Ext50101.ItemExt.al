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

        field(50117; "Steel Type"; Code[10])
        {
            TableRelation = substrate."Substrate Code";
        }

        field(50118; "Sq Ins"; Decimal)
        {
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                // IF InterPlantMgt.IsCoatings THEN
                //  CalculatePCSPerBar;
            end;
        }

        field(50119; "CLN"; Text[30])
        {
            TableRelation = "Item Associates"."Text Value" where(Type = const(CLN));
        }

        field(50120; "Recipe No"; Text[30])
        {
            TableRelation = "Item Associates"."Text Value" where(Type = const(RecipeNo));
        }

        field(50121; "Pump Speed"; Integer)
        {
            TableRelation = "Item Associates"."Integer Value" where(Type = const(PumpSpeed));
        }

        field(50127; "Max Ecoat"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            trigger OnValidate()
            begin
                //  SupervisorOnlyField;
            end;
        }

        field(50140; "Block Cr. Alt. Items"; Boolean)
        {
            trigger OnValidate()
            var
                UserSetup: Record "User Setup";
            begin
                UserSetup.get(UserId);
                UserSetup.TestField("Sales User", true);
            end;
        }

        field(50144; "Secs On"; Integer)
        {
            MinValue = 1;
            MaxValue = 9999;
        }

        field(50145; "Secs Off"; Integer)
        {
            MinValue = 1;
            MaxValue = 9999;
        }

        field(50151; "Transport $"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }

    }

    // PlantHoldAccess()
    // // >> MC10.22
    // UserPersonalization.RESET;
    // UserPersonalization.SETRANGE("User ID", USERID);
    // IF UserPersonalization.FINDFIRST THEN BEGIN
    //   IF NOT (
    //     (UserPersonalization."Profile ID" = 'QUALITY CONTROLLER COATINGS 85') OR 
    //     (UserPersonalization."Profile ID" = 'PLANT MANAGER C85') OR 
    //     (UserPersonalization."Profile ID" = 'ORDER PROCESSOR ACADIAN') OR 
    //     (UserPersonalization."Profile ID" = 'ORDER PROCESSOR ACADIAN-ADMIN')) THEN
    //       ERROR('You do not have permission to edit this field.');
    // END;
    // // << MC10.22

    //     LOCAL SupervisorOnlyField()
    // //C85 [COATINGS]
    // UserSetup.GET(USERID);
    // //UserSetup.TESTFIELD(UserSetup.Supervisor);
    // //C85 [COATINGS]

}
