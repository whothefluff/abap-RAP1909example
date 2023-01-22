class lhc_Code definition inheriting from cl_abap_behavior_handler.

  private section.

    methods validateNotEmpty for validation Code~validateNotEmpty
              importing
                keys for Code.

    methods get_authorizations for authorization
              importing
                keys
              request
                requested_authorizations for Code
              result
                result.

endclass.

class lhc_Code implementation.

  method validateNotEmpty.

  endmethod.
  method get_authorizations.

  endmethod.

endclass.

class lhc_Texts definition inheriting from cl_abap_behavior_handler.

  private section.

    methods validateNotEmpty for validation Texts~validateNotEmpty
              importing
                keys for Texts.

endclass.

class lhc_Texts implementation.

  method validateNotEmpty.

  endmethod.

endclass.
