if exists("b:current_syntax")
  finish
endif

setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal commentstring=//\ %s

source $VIMRUNTIME/syntax/groovy.vim

syn region nextflowBlockString start=+'''+ keepend end=+'''+ contains=groovySpecialChar,groovySpecialError,@Spell,nextflowELExpr,@shell

" Nextflow specifics
syn keyword nextflowBoolean true false
syn keyword nextflowConstant null
syn keyword nextflowDirective accelerator afterScript beforeScript cache clusterOptions conda container containerOptions cpus disk echo errorStrategy executor ext label machineType maxErrors maxForks maxRetries memory module penv pod publishDir queue resourceLabels scratch stageInMode stageOutMode storeDir tag time validExitStatus
syn keyword nextflowOperator branch buffer choice close collate collect collectFile combine concat count countBy cross distinct dump filter first flatMap flatten groupBy groupTuple ifEmpty into join last map max merge min mix multiMap phase print println randomSample reduce separate set splitCsv splitFasta splitFastq splitText spread subscribe sum tap toInteger toList toSortedList transpose unique until view
syn keyword nextflowSpecial launchDir moduleDir nextflow params projectDir secrets workDir workflow 
syn keyword nextflowType file val process path tuple Channel env stdin
syn match nextflowBlock "\v(input|output|script|shell|exec|stub|when):"
syn match nextflowELExpr "\!{.\{-}}" contained
syn match nextflowProcessOptions "\v(mode|enabled|emit|optional):"

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
hi def link nextflowOperator       Operator
hi def link nextflowProcessOptions Define
hi def link nextflowSpecial        Special
hi def link nextflowType           Type
