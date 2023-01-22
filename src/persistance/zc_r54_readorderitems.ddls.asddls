@EndUserText.label: 'Order items'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_R54_ReadOrderItems
  as projection on ZI_R54_OrderItems
  {
    key UpId,
    key Id,
    CreatedAt,
    CreatedBy,
    ModifiedAt,
    ModifiedBy,
    Unit,
    Quantity,
    _CreationUser,
    _Header: redirected to parent ZC_R54_ReadOrders,
    _ModificationUser,
    _UnitOfMeasure
  }
