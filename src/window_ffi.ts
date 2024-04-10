import * as slint from "$slint";

export function create() {
    let ui = slint.loadFile("ui/about.slint");
    let demo = new ui.Demo();

    demo.run();
}

export async function create2() {
    let ui = slint.loadFile("ui/window.slint");
    let window = new ui.AppWindow();

    window.request_increase_value = function () {
        window.counter = window.counter + 1;
    };

    await window.run();
}