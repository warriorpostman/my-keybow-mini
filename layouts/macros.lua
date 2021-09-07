require "keybow"

function setup()
    keybow.use_mini()
    keybow.auto_lights(true)
    keybow.clear_lights()
end

-- from mac_snipets
function modifier(key, ...)
    for i = 1, select('#', ...) do
        local j = select(i, ...)
        keybow.set_modifier(j, keybow.KEY_DOWN)
    end
    keybow.tap_key(key)
    for i = 1, select('#', ...) do
        local j = select(i, ...)
        keybow.set_modifier(j, keybow.KEY_UP)
    end
end

function handle_minikey_00(pressed)
    keybow.set_modifier(keybow.LEFT_META, pressed);
    if pressed then
        -- keybow.set_modifier(keybow.LEFT_META, keybow.KEY_DOWN);
        -- keybow.tap_key(keybow.TAB);
        -- keybow.set_modifier(keybow.LEFT_META, keybow.KEY_UP);
        keybow.set_pixel(0, 255, 0, 0)
    else
        keybow.set_pixel(0, 0, 0, 0)
    end
end

function handle_minikey_01(pressed)
    keybow.set_key(keybow.TAB, pressed)
    if pressed then
        -- keybow.set_modifier(keybow.LEFT_META, keybow.KEY_DOWN);
        -- keybow.tap_key(keybow.TAB);
        -- keybow.set_modifier(keybow.LEFT_META, keybow.KEY_UP);
        keybow.set_pixel(255, 0, 0, 0)
    else
        keybow.set_pixel(0, 0, 0, 0)
    end
end

function handle_minikey_02(pressed)
    keybow.set_modifier(keybow.LEFT_META, pressed);
    keybow.set_key("r", pressed);
end
