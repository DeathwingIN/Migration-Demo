table 50002 "Item Associates"
{
    Caption = 'Item Associates';
    DataClassification = ToBeClassified;
    //LookupPageID = Page50263;
    //DrillDownPageID = Page50263;
    DataPerCompany = false;

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionMembers = None,CLN,RecipeNo,PumpSpeed;
            OptionCaptionML = ENU = ' ,CLN,Recipe No,Pump Speed';
        }

        field(2; "Text Value"; Text[30])
        {
            Caption = 'Text Value';
        }

        field(3; "Decimal Value"; Decimal)
        {
            Caption = 'Decimal Value';
            DecimalPlaces = 0 : 5;
        }

        field(4; "Integer Value"; Integer)
        {
            Caption = 'Integer Value';
        }
    }

    keys
    {
        key(PK; Type, "Text Value", "Decimal Value", "Integer Value")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Type, "Text Value", "Integer Value")
        {
        }
    }

    // History / Notes:
    // Converted from Navision C/AL Object Table 50098 (Item Associates).
    // Version List: COATINGS, C85

}
