using Gtk;

int main(string[] args) {
	Gtk.init(ref args);
	Gtk.Window win = new Gtk.Window();
	win.destroy.connect(Gtk.main_quit);
	win.show_all();
	Gtk.main();

	return 0;
}
