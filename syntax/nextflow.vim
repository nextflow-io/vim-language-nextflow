if exists("b:current_syntax")
  finish
endif

setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal colorcolumn=80

source $VIMRUNTIME/syntax/groovy.vim

syn region nextflowBlockString start=+'''+ keepend end=+'''+ contains=groovySpecialChar,groovySpecialError,@Spell,nextflowELExpr,@shell

syn match nextflowELExpr "\!{.\{-}}" contained

" Nextflow specifics

syn keyword nextflowDirective accelerator afterScript beforeScript cache cpus conda container containerOptions clusterOptions disk echo errorStrategy executor ext label machineType maxErrors maxForks maxRetries memory module penv pod publishDir queue scratch stageInMode stageOutMode storeDir tag time validExitStatus

syn match nextflowBlock "\v(input|output|script|shell|exec|stub|when):"

syn keyword nextflowKeyword from into as nextflow params
syn keyword nextflowBoolean true false
syn keyword nextflowType set tuple file val env path
syn keyword nextflowSpecial include Channel launchDir
syn match nextflowProcessOptions "\v(mode|enabled|emit|optional):" 

syn keyword nextflowConstant null

" Apply highlighting
let b:current_syntax = "nextflow"

hi def link groovyELExpr           Identifier
hi def link nextflowBlock          Function
hi def link nextflowBlockString    String
hi def link nextflowBoolean        Boolean
hi def link nextflowComment        Comment
hi def link nextflowConstant       Constant
hi def link nextflowDirective      Statement
hi def link nextflowELExpr         Identifier
hi def link nextflowFunction       Function
hi def link nextflowKeyword        Keyword
hi def link nextflowProcessOptions Define
hi def link nextflowSpecial        Special
hi def link nextflowType           Type
