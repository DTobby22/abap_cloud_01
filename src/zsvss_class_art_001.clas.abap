CLASS zsvss_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZSVSS_CLASS_ART_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      DATA it_art TYPE STANDARD TABLE OF zdvc_tab_art.

      it_art = VALUE #(
        ( client = sy-mandt id_art = 1
          descr  = 'Lapices'
          desc2  = 'Paquete con 12 lapices'
          color  = 'Varios'
          piezas = 12
          stock  = 10
          url    = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-blackwing-574-05_4c584015-362c-44ff-bbfe-d95e2a5bb943_700x.jpg?v=1736476183'
        )
        ( client = sy-mandt id_art = 2
          descr  = 'Agenda'
          desc2  = 'Agenda 2025 azul aqua hard cover'
          color  = 'Azul'
          piezas = 1
          stock  = 10
          url    = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-agenda-2025-hard-cover-azul-aqua-03_700x.jpg?v=1720633282'
        )
        ( client = sy-mandt id_art = 3
          descr  = 'Sacapuntas'
          desc2  = 'Sacapuntas Balckwing de punta larga'
          color  = 'Negro'
          piezas = 1
          stock  = 16
          url    = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-blackwing-one-step-sharpener-2_700x.jpg?v=1720076695'
        )
        ( client = sy-mandt id_art = 4
          descr  = 'Reglas de aluminio'
          desc2  = 'Bonitas, minimalistas y funcionales reglas de 15cm hechas de aluminio.'
          color  = 'Negro'
          piezas = 1
          stock  = 7
          url    = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-regla-negra_700x.jpg?v=1626309441'
        )
      ).

      INSERT zdvc_tab_art FROM TABLE @it_art.
      IF sy-subrc = 0.
        out->write( 'Insert successfull' ).
      ELSE.
        out->write( 'Insert wrong' ).
      ENDIF.


  ENDMETHOD.
ENDCLASS.
