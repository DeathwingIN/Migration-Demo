table 50001 Substrate
{
    Caption = 'Substrate';
    DataClassification = ToBeClassified;
    DataPerCompany = false;
    //LookupPageID = Page50232;
    //DrillDownPageID = Page50232;

    fields
    {
        field(1; "Substrate Code"; Code[10])
        {
            Caption = 'Substrate Code';
        }

        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }

        field(3; "Base Thickness Mandatory"; Boolean)
        {
            Caption = 'Base Thickness Mandatory';
        }
    }

    keys
    {
        key(PK; "Substrate Code")
        {
            Clustered = true;
        }
    }

}
