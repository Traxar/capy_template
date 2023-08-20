const capy = @import("capy");
const std = @import("std");

pub fn main() !void {
    try capy.backend.init();

    var window = try capy.Window.init();
    try window.set(capy.Expanded(capy.TextArea(.{ .text = "Hello World!" })));

    window.show();
    capy.runEventLoop();
}
