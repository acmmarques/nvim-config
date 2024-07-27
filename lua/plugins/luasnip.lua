return {
    'L3MON4D3/LuaSnip',
    config = function()
        local ls = require "luasnip"
        local s = ls.snippet
        local t = ls.text_node
        local i = ls.insert_node
        local f = ls.function_node

        -- Define HTML snippets
        local html_snippets = {
            s("h1", {
                t("<h1>"), i(1), t("</h1>")
            }),
            s("h2", {
                t("<h2>"), i(1), t("</h2>")
            }),
            s("h3", {
                t("<h3>"), i(1), t("</h3>")
            }),
            s("p", {
                t("<p>"), i(1), t("</p>")
            }),
            s("ol", {
                t("<ol>"),
                t({"", "  <li>"}), i(1, "Item 1"), t("</li>"),
                t({"", "  <li>"}), i(2, "Item 2"), t("</li>"),
                t({"", "  <li>"}), i(3, "Item 3"), t("</li>"),
                t({"", "</ol>"}),
            }),
            s("ul", {
                t("<ul>"),
                t({"", "  <li>"}), i(1, "Item 1"), t("</li>"),
                t({"", "  <li>"}), i(2, "Item 2"), t("</li>"),
                t({"", "  <li>"}), i(3, "Item 3"), t("</li>"),
                t({"", "</ul>"}),
            }),
            s("li", {
                t("<li>"), i(1), t("</li>")
            }),
            s("script", {
                t("<script src=\""), i(1, "script.js"), t("\"></script>")
            }),
            s("a", {
                t("<a href=\""), i(1, "url"), t("\">"), i(2, "link text"), t("</a>")
            }),
            s("img", {
                t("<img src=\""), i(1, "image.jpg"), t("\" alt=\""), i(2, "description"), t("\">")
            }),
            s("table", {
                t("<table>"),
                t({"", "  <thead>"}),
                t({"", "    <tr>"}),
                t({"", "      <th>"}), i(1, "Header 1"), t("</th>"),
                t({"", "      <th>"}), i(2, "Header 2"), t("</th>"),
                t({"", "    </tr>"}),
                t({"", "  </thead>"}),
                t({"", "  <tbody>"}),
                t({"", "    <tr>"}),
                t({"", "      <td>"}), i(3, "Data 1"), t("</td>"),
                t({"", "      <td>"}), i(4, "Data 2"), t("</td>"),
                t({"", "    </tr>"}),
                t({"", "  </tbody>"}),
                t({"", "</table>"}),
            }),
            s("span", {
                t("<span>"), i(1), t("</span>")
            }),
            s("div", {
                t("<div>"),
                t({"", "  "}), i(1),
                t({"", "</div>"}),
	    }),
	    s("div#", {
		t("<div class='"),
		i(1),
		t("' id=''>"),
		t({"", "  "}),
		t({"", "</div>"})
	    }),
        }

        -- Load the snippets for specific filetypes
        ls.add_snippets('html.eruby', html_snippets)
        ls.add_snippets('eruby', html_snippets)

        -- Example Lua snippet
        ls.add_snippets('lua', {
            s('hello', {
                t('print("hello world")')
            })
        })
    end
}
