pageextension 50004 "Acadian Sales Order Ext" extends "Sales Order"
{
    actions
    {
        addafter("F&unctions")
        {
            group(AcadianWorkOrder)
            {
                Caption = 'Work Order';
                Image = ServiceSetup;

                // Source: Page 50083 -> Action "Create Work Order"
                action("Create Work Order")
                {
                    ApplicationArea = All;
                    Caption = 'Create Work Order';
                    Image = Planning;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        AcadianSalesLineMgt: Codeunit "Acadian Sales Line Mgt";
                        AcadianProdOrderMgt: Codeunit "Acadian Prod. Order Mgt";
                        AcadianLabelMgt: Codeunit "Acadian Label Mgt";
                        AcadianNotifyMgt: Codeunit "Acadian Notification Mgt";
                    begin
                        // 1. Split Lines (Logic from CU 50028)
                        AcadianSalesLineMgt.SplitSalesOrderLine(Rec);
                        Commit();

                        // 2. Create Work Orders (Logic from CU 50021/99000792)
                        AcadianProdOrderMgt.CreateWorkOrdersFromSales(Rec);
                        Commit();

                        // 3. Print Labels (Logic from CU 50010)
                        // Note: In your legacy code, these ran automatically. 
                        // We can ask the user or run them directly

                        AcadianLabelMgt.AutoPrint4X6(Rec);
                        // AcadianLabelMgt.PrintBakeTags(Rec); // Uncomment if needed immediately

                        // 4. Send Notifications (Logic from CU 50022/50030)
                        AcadianNotifyMgt.NotifyEPCItem(Rec);
                        // AcadianNotifyMgt.NotifyToolingRequired(Rec, ...);
                    end;
                }

                // Source: Page 50083 -> Action "Reprint Work Order"
                action("Reprint Work Order")
                {
                    ApplicationArea = All;
                    Caption = 'Reprint Work Order';
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Report;

                    trigger OnAction()
                    var
                        AcadianLabelMgt: Codeunit "Acadian Label Mgt";
                    begin
                        // Logic to check for Mechanical Item will live inside this function
                        AcadianLabelMgt.ReprintShippingLabel(Rec);
                    end;
                }

            }
        }
    }
}
