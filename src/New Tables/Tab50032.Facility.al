table 50032 Facility
{
    Caption = 'Facility';
    DataClassification = ToBeClassified;
    DataPerCompany = false;
    LookupPageID = Facilities;
    DrillDownPageID = Facilities;

    fields
    {
        field(1; "Plant Id"; Text[10])
        {
            Caption = 'Plant Id';
        }

        field(3; "Facility Name"; Code[30])
        {
            Caption = 'Facility Name';
        }

        field(4; "Address"; Text[100])
        {
            Caption = 'Address';
        }

        field(5; "City"; Text[50])
        {
            Caption = 'City';
        }

        field(6; "Province"; Text[10])
        {
            Caption = 'Province';
        }

        field(7; "Postal Code"; Code[10])
        {
            Caption = 'Postal Code';
        }

        field(8; "Phone"; Text[30])
        {
            Caption = 'Phone';
        }

        field(9; "Fax"; Text[30])
        {
            Caption = 'Fax';
        }

        field(10; "NAV Customer Id"; Code[20])
        {
            Caption = 'NAV Customer Id';
            TableRelation = Customer."No.";
        }

        field(11; "Facility Code"; Code[10])
        {
            Caption = 'Facility Code';
        }

        field(12; "Facility Id"; Guid)
        {
            Caption = 'Facility Id';
        }

        field(13; "Base Unit of Measure"; Code[10])
        {
            Caption = 'Base Unit of Measure';
            TableRelation = "Unit of Measure".Code;
        }

        field(14; "Sale Unit of Measure"; Code[10])
        {
            Caption = 'Sale Unit of Measure';
        }

        field(15; "Qty. per Sales Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            InitValue = 1;
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                if "Qty. per Sales Unit of Measure" <= 0 then
                    FieldError("Qty. per Sales Unit of Measure", 'Conversion ratio cannot be zero or null');
            end;
        }

        field(16; "Intercompany Customer No"; Code[20])
        {
            Caption = 'Intercompany Customer No';
            TableRelation = Customer."No.";
        }

        field(17; "Company"; Text[30])
        {
            Caption = 'Company';
            TableRelation = Company.Name;
            Description = 'MC4.00';
        }

        field(18; "Email"; Text[80])
        {
            Caption = 'Email';
            Description = 'C85 COATINGS';
        }

        field(19; "Quality Supervisor"; Text[50])
        {
            Caption = 'Quality Supervisor';
            Description = 'C85 COATINGS';
        }

        field(20; "Sales G/L Account"; Code[20])
        {
            Caption = 'Sales G/L Account';
            TableRelation = "G/L Account";
            Description = 'C85 COATINGS';
        }

        field(21; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
            Description = 'MC9.36';
            CaptionClass = '1,1,1';
        }
    }

    keys
    {
        key(PK; "Plant Id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Plant Id", "Facility Name", "NAV Customer Id", "Facility Code")
        {
        }
    }
}
