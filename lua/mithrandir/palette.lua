local P = {}

P.dark = {
    -- base
    bg = "#101010",
    fg = "#D3D1C9",
    selection = "#4C3D0C",
    cursorline = "#211C0B",
    cursor = "#FB00FC",

    comment = "#6D6664",
    string = "#747A35",
    keyword = "#D65606",
    number = "#A8C09A",
    function_ = "#8A4C97",
    type = "#9B1725",
    variable = "#CC8807",
    constant = "#F9837B",
    preproc = "#A53E3D",
    attribute = "#DE935F",
    regex = "#747A35",
    url = "#7ACCFE",

    black = "#101010",
    red = "#9B1725",
    green = "#A8C09A",
    yellow = "#CC8807",
    blue = "#7ACCFE",
    magenta = "#8A4C97",
    cyan = "#56B6C2",
    white = "#D3D1C9",

    bright_black = "#5A5A5A",
    bright_red = "#B43A2E",
    bright_green = "#B7D0AD",
    bright_yellow = "#E19A0A",
    bright_blue = "#9DD7FF",
    bright_magenta = "#A86AB1",
    bright_cyan = "#7FD4DB",
    bright_white = "#FFFFFF",
}

function P.get(style)
    style = style or "dark"
    return P[style]
end

return P
