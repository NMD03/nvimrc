local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node

return {
  s("rule", {
    t("rule "), i(1, "rule_name"), t({ ":", "    " }),
    t("let"), t({ "", "        " }),
    i(2, "custom_def"), t({ "", "    " }),
    t("in"), t({ "", "    " }),
    t("    [ "), i(3, "rule_input"), t(" ]"), t({ "", "    " }),
    t("    --[ "), i(4, "action_fact"), t(" ]-->"), t({ "", "    " }),
    t("    [ "), i(5, "rule_output"), t(" ]"), t({ "", "" }),
  }),

  s("cmt", {
    t("/*"), t({ "", "" }),
    t("* "), i(1, "rule_description"), t({ "", "" }),
    t("*/"), t({ "", "" }),
  }),

  s("theory", {
    t("theory "), i(1, "theory_name"), t({ "", "" }),
    t({ "", "" }),
    t("begin"), t({ "", "" }),
    t({ "", "" }),
    t("builtins: "), i(2, "import_functions"), t({ "", "" }),
    t({ "", "" }),
    t("functions: "), i(3, "define_functions"), t({ "", "" }),
    t({ "", "" }),
    t("equations: "), i(4, "define_equations"), t({ "", "" }),
    t({ "", "" }),
    i(5, "protocol_model"), t({ "", "" }),
    t({ "", "" }),
    t("end"),
  }),

  s("lemma", {
    t("lemma "), i(1, "lemma_name"), t({ ":", "    " }),
    c(2, { t({ "exists-trace", "    " }), t() }),
    t("\" "), i(3, "lemma_logic"), t({"","    "}),
    t("\""),
  }),

  s("restrict", {
    t("restriction"), i(1, "lemma_name"), t({ ":", "    " }),
    t("\""), i(3, "restriction_logic"), t("\""),
  }),
}
