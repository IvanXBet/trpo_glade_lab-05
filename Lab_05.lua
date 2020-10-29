lgi = require('lgi');
gtk = lgi.Gtk;
gdk = lgi.Gdk;
gtk.init();

bld = gtk.Builder();
pixbuf = lgi.GdkPixbuf.Pixbuf;
bld:add_from_file('Lab_05.glade');

ui = bld.objects;
ui.Main_Window1.title = 'Window Transition';
ui.Main_Window1.on_destroy = gtk.main_quit();
--
function ui.But_Win_1.on_clicked()
	ui.Main_Window2:show_all();
end
function ui.But_Win_2.on_clicked()
	ui.Main_Window2:hide();
end
function ui.But_Mod_Win.on_clicked()
	(gtk.MessageDialog
	{
		message_type = gtk.MessageType.INFO,
		buttons = gtk.ButtonsType.CLOSE,
		text = "This is a message",
		secondary_text = "description"
	}):run();
end
--
ui.Main_Window1:show_all();
gtk.main();
