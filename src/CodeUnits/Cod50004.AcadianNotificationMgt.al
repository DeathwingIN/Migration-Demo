codeunit 50004 "Acadian Notification Mgt"
{
    //This codeunit will be responsible for all email and system notifications.

    procedure NotifyToolingRequired(SalesHeader: Record "Sales Header"; ToolingCount: Integer; ItemList: Text)
    begin
        // TODO: Port C/AL logic from CU 50022 (function SendToolingNotification) here.
    end;

    procedure NotifyEPCItem(SalesHeader: Record "Sales Header")
    begin
        // TODO: Port C/AL logic from CU 50030 (function EmailNotificationsForSO_EPCItem) here.
    end;


}
