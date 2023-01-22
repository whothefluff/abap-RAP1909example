@EndUserText.label: 'Orders'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZC_R54_ReadOrders
  as projection on ZI_R54_Orders
  {
    key Id,
    ExternalId,
    CreatedAt,
    CreatedBy,
    ModifiedAt,
    ModifiedBy,
    Status as StatusCode,
    _LocalizedStatus.Name as StatusName,
    _Items: redirected to composition child ZC_R54_ReadOrderItems,
    _CreationUser,
    _ModificationUser
  }
