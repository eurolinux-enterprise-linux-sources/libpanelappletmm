define(`__GUCHARP_TO_USTRING',`Glib::convert_const_gchar_ptr_to_ustring((const char*)$`'3)')

_CONVERSION(`guchar*',`Glib::ustring',__GUCHARP_TO_USTRING)
_CONVERSION(`const Glib::ustring&',`const guchar*',`($2)$3.c_str()')

_CONVERSION(`const Glib::ArrayHandle<Glib::ustring>&',`const gchar*',`($2)($3.data())')
_CONVERSION(`const gchar*',`const Glib::ArrayHandle<Glib::ustring>&',`Glib::ArrayHandle<Glib::ustring>($2, Glib::OWNERSHIP_SHALLOW)')

_CONVERSION(`const Glib::ArrayHandle<BonoboUIVerb>&',`const BonoboUIVerb*',`($2)($3.data())')
_CONVERSION(`const BonoboUIVerb*',`const Glib::ArrayHandle<BonoboUIVerb>&',`Glib::ArrayHandle<BonoboUIVerb>($2, Glib::OWNERSHIP_SHALLOW)')

_CONVERSION(`BonoboControl*',`const BonoboControl*',`($3)')
_CONVERSION(`BonoboUIComponent*',`const BonoboUIComponent*',`($3)')

# The GSList conversions
define(`__FL2H_DEEP',`$`'2($`'3, Glib::OWNERSHIP_DEEP)')
define(`__FL2H_SHALLOW',`$`'2($`'3, Glib::OWNERSHIP_SHALLOW)')
define(`__FL2H_NONE',`$`'2($`'3, Glib::OWNERSHIP_NONE)')
_CONVERSION(`GSList*',`Glib::SListHandle<Entry>',__FL2H_SHALLOW)
_CONVERSION(`GSList*',`Glib::SListHandle<Glib::ustring>',__FL2H_DEEP)
# These are for GConfValues, which are optimized to reduce copies
_CONVERSION(`GSList*',`SListHandle_ValueString',__FL2H_NONE)
_CONVERSION(`GSList*',`SListHandle_ValueSchema',__FL2H_NONE)
_CONVERSION(`GSList*',`SListHandle_ValueInt',__FL2H_NONE)
_CONVERSION(`GSList*',`SListHandle_ValueBool',__FL2H_NONE)
_CONVERSION(`GSList*',`SListHandle_ValueFloat',__FL2H_NONE)
_CONVERSION(`const SListHandle_ValueString&',`GSList*',`$3.data()')
_CONVERSION(`const SListHandle_ValueSchema&',`GSList*',`$3.data()')
_CONVERSION(`const SListHandle_ValueInt&',   `GSList*',`$3.data()')
_CONVERSION(`const SListHandle_ValueBool&',  `GSList*',`$3.data()')
_CONVERSION(`const SListHandle_ValueFloat&', `GSList*',`$3.data()')

_CONVERSION(`int',`guint',($2)($3))
_CONVERSION(`guint',`int',($2)($3))

_CONVERSION(`gpointer', `GdkColor*', `($2)($3)')
_CONVERSION(`GdkColor*', `gpointer', `($2)($3)')

_CONVERSION(`Gdk::Color&', `GdkColor*',`($3).gobj()')
_CONVERSION(`const Glib::RefPtr<Gdk::Pixmap>&', `GdkPixmap**', `&(Glib::unwrap($3))')

_CONVERSION(`GConfValue*',  `Gnome::Conf::Value', `Gnome::Conf::Value($3)')
_CONVERSION(`Gnome::Conf::Value', `GConfValue*',  `($3).gobj()')

_CONVERSION(`const Gnome::Conf::Value&',`GConfValue*',`const_cast<GConfValue*>($3.gobj())')
_CONVERSION(`GConfValue*',`const Gnome::Conf::Value&',`Gnome::Conf::Value($3)')

#TODO: Patch the C library:
_CONVERSION(`const std::string&',`gchar*',`($2)$3.c_str()')

dnl Enumeration and various typedef conversions:
dnl --------------------------------------------

_CONVERSION(`AppletOrient', `PanelAppletOrient', `($2)($3)')
_CONVERSION(`PanelAppletOrient', `AppletOrient', `($2)($3)')

_CONVERSION(`AppletBackgroundType', `PanelAppletBackgroundType', `($2)($3)')
_CONVERSION(`PanelAppletBackgroundType', `AppletBackgroundType', `($2)($3)')

_CONVERSION(`AppletFlags', `PanelAppletFlags', `($2)($3)')
_CONVERSION(`PanelAppletFlags', `AppletFlags', `($2)($3)')


These are for signals. That's why they use wrap( , true):
_CONVERSION(`const Gdk::Color&',`GdkColor*',`const_cast<GdkColor*>(($3).gobj())')
_CONVERSION(`GdkColor*',`const Gdk::Color&',`Glib::wrap($3, true)')

_CONVERSION(`const Glib::RefPtr<const Gdk::Pixmap>&',`GdkPixmap*',`const_cast<GdkPixmap*>(Glib::unwrap($3))')
_CONVERSION(`GdkPixmap*',`const Glib::RefPtr<const Gdk::Pixmap>&',`Glib::wrap((GdkPixmapObject*)($3), true)')
