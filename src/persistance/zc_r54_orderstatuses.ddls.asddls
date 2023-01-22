@EndUserText.label: 'Order statuses'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZC_R54_OrderStatuses
  as projection on ZI_R54_OrderStatuses
  {
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
    _Texts: redirected to composition child ZC_R54_OrderStatusTexts
  }
