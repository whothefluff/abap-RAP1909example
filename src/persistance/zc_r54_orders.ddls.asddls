@EndUserText.label: 'Orders'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZC_R54_Orders
  as projection on ZI_R54_Orders
  {
    key Id,
    ExternalId,
    CreatedAt,
    CreatedBy,
    ModifiedAt,
    ModifiedBy,
    Status,
    _CreationUser,
    _Items: redirected to composition child ZC_R54_OrderItems,
    _LocalizedStatus,
    _ModificationUser,
    _Status: redirected to ZC_R54_OrderStatuses
  }
