local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("rule", {
    t("rule "), i(1, "rule_name"), t({":", "    "}),
    t("let"), t({"", "    "}),
    t("in"), t({"", "    "}),
    t("    [ "), i(2, "rule_input"), t(" ]"), t({"","    "}),
    t("    --[ "), i(3, "action_fact"), t(" ]-->"), t({"","    "}),
    t("    [ "), i(4, "rule_output"), t(" ]"), t({"",""}),
    t("end")
   }),
}
