module Qlang
  module Lexer
    class MainLexer < Base
      rule(/(#{FUNCCV})#{ANYSP}#{EQL}#{ANYSP}(#{FORMULA})/) { :def_func }
      rule(/#{ITGRLSYM}#{ANYSP}#{LPRN}(#{ANYSTR})#{RPRN}#{LBRCT}(#{ANYSTR})#{RBRCT}/) { :integral }
      rule(/d\/d(#{VAR}) (#{FORMULA})/) { :differential }

      rule(/lim#{LBRCT}(#{VAR})#{RSARW}(#{VARNUM})#{RBRCT} (#{FORMULA})/) { :limit }

      rule(/#{LPRN}(#{NUMS_BY_SP})#{RPRN}/) { :vector }
      rule(/#{LPRN}(#{NUMS_BY_SP_BY_SCLN_OR_NELN})#{RPRN}t/m) { :tmatrix }
      rule(/#{LPRN}(#{NUMS_BY_SP_BY_SCLN_OR_NELN})#{RPRN}/m) { :matrix }

      if RUBY_VERSION >= '2.0.0'
        rule(/∑#{LBRCT}(#{VAR})=(#{INT}),#{ANYSP}(#{INT})#{RBRCT} (#{FORMULA})/) { :sigma }
      end
      rule(/sigma#{LBRCT}(#{VAR})=(#{INT}),#{ANYSP}(#{INT})#{RBRCT} (#{FORMULA})/) { :sigma }

      rule(/#{FUNCCN}/) { :FUNCCN }

      rule(/#{LPRN}/) { :LPRN }
      rule(/#{RPRN}/) { :RPRN }
      rule(/#{LBRCS}/) { :LBRCS }
      rule(/#{RBRCS}/) { :RBRCS }

      rule(/[ \t\f]/)

      rule(/(\r|\n)+/) { :NULL }

      rule(/[^\(\)\{\}(\n\n)]+/) { :CONT }
    end
  end
end
