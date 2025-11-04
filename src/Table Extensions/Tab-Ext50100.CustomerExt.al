tableextension 50100 "Customer Ext" extends Customer
{
    fields
    {
        field(50038; "Master Lot Scan"; Boolean)
        {
            Caption = 'Master Lot Scan';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                IF "Master Lot Scan" THEN BEGIN
                    TESTFIELD("CMP Automatic 4 X 6", FALSE);
                END;
            end;
        }

        field(50039; "Automatic 4 X 6"; Boolean)
        {
            Caption = 'Automatic 4 X 6';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                IF "Automatic 4 X 6" THEN BEGIN
                    TESTFIELD("CMP Automatic 4 X 6", FALSE);
                    TESTFIELD("Grey Bin", FALSE);
                END;
            end;
        }

        field(50040; "CMP Automatic 4 X 6"; Boolean)
        {
            Caption = 'CMP Automatic 4 X 6';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                IF "CMP Automatic 4 X 6" THEN BEGIN
                    TESTFIELD("Automatic 4 X 6", FALSE);
                    TESTFIELD("Master Lot Scan", FALSE);
                END;
            end;
        }

        field(50041; "Master Label"; Text[80])
        {
            Caption = 'Master Label';
            DataClassification = CustomerContent;
        }

        field(50043; "Grey Bin"; Boolean)
        {
            Caption = 'Grey Bin';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                IF "Grey Bin" THEN
                    TESTFIELD("Automatic 4 X 6", FALSE);
            end;
        }

        field(50044; "Enable Split Order"; Boolean)
        {
            Caption = 'Enable Split Order';
            DataClassification = CustomerContent;
        }

        field(50045; "Lot based Invoicing"; Boolean)
        {
            Caption = 'Lot based Invoicing';
            DataClassification = CustomerContent;
        }

        field(50046; "Inv. Lot Size"; Decimal)
        {
            Caption = 'Inv. Lot Size';
            DataClassification = CustomerContent;
        }

        field(50300; "Internal"; Boolean)
        {
            Caption = 'Internal';
            DataClassification = CustomerContent;
        }

        field(50301; "Internal Company"; Text[30])
        {
            Caption = 'Internal Company';
            DataClassification = CustomerContent;
        }

        field(50302; "Internal Plant"; Code[10])
        {
            Caption = 'Internal Plant';
            DataClassification = CustomerContent;
        }

        field(50303; "Packing slips control on WS"; Boolean)
        {
            Caption = 'Packing slips control on WS';
            DataClassification = CustomerContent;
        }

    }
}
