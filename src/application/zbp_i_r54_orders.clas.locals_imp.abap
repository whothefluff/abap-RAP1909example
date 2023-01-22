class lhc_Orders definition inheriting from cl_abap_behavior_handler.

  private section.

    methods assignExternalNumber for determination Orders~assignExternalNumber
            importing
              keys for Orders.

    methods newStatusValid for determination Orders~newStatusValid
              importing
                keys for Orders.

    methods validateNotEmpty for validation Orders~validateNotEmpty
              importing
                keys for Orders.

    methods get_authorizations for authorization
              importing
                keys request requested_authorizations for Orders result result.

    methods Approve for modify
              importing
                keys for action Orders~Approve result result.

    methods get_features for features
            importing
              keys
            request
              requested_features for Orders
            result
              result.

endclass.

class lhc_Orders implementation.

  method assignExternalNumber.

  endmethod.
  method newStatusValid.

  endmethod.
  method validateNotEmpty.

  endmethod.
  method get_authorizations.

  endmethod.
  method Approve.

  endmethod.
  method get_features.

  endmethod.

endclass.

class lhc_Items definition inheriting from cl_abap_behavior_handler.

  private section.

    methods validateNotEmpty for validation Items~validateNotEmpty
            importing
              keys for Items.

endclass.

class lhc_Items implementation.

  method validateNotEmpty.

  endmethod.

endclass.
