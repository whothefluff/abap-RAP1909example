@EndUserText.label: 'Order status texts'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_R54_OrderStatusTexts
  as projection on ZI_R54_OrderStatusTexts
  {
    key Language,
    key Id,
    CreatedAt,
    CreatedBy,
    ModifiedAt,
    ModifiedBy,
    Name,
    Description,
    _CreationUser,
    _LocalizedText,
    _ModificationUser,
    _Status: redirected to parent ZC_R54_OrderStatuses
  }
