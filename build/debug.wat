(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32)))
 (type $3 (func (result i32)))
 (type $4 (func (param i32 i32) (result i32)))
 (type $5 (func (param i32 i32 i32)))
 (type $6 (func))
 (type $7 (func (param i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32)))
 (type $9 (func (param i32 i32 i64) (result i32)))
 (type $10 (func (param i32 i64 i32)))
 (type $11 (func (param i64 i32) (result i32)))
 (type $12 (func (param i32 i64 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "reportOffset" (func $assembly/env/reportOffset (param i32 i32 i32)))
 (import "env" "onNewLabel" (func $assembly/env/onNewLabel (param i32 i32)))
 (import "env" "console.log" (func $~lib/bindings/dom/console.log (param i32)))
 (import "env" "outputChar" (func $assembly/env/outputChar (param i32)))
 (global $assembly/debug/labelsOffsets i32 (i32.const 65568))
 (global $assembly/debug/functionsOffsets i32 (i32.const 65856))
 (global $assembly/index/NUM_CAP i32 (i32.const 32768))
 (global $assembly/index/REGISTER_CAP i32 (i32.const 32776))
 (global $assembly/index/STACK_CAP i32 (i32.const 4096))
 (global $assembly/index/dynamicCalls i32 (i32.const 66032))
 (global $assembly/index/pc (mut i32) (i32.const 0))
 (global $assembly/index/reg i32 (i32.const 66064))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $assembly/index/stack (mut i32) (i32.const 0))
 (global $assembly/index/stackIndex (mut i32) (i32.const 0))
 (global $assembly/index/inputBuffer (mut i32) (i32.const 66656))
 (global $assembly/index/debugMode (mut i32) (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 69808))
 (global $~lib/memory/__data_end i32 (i32.const 69840))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 102608))
 (global $~lib/memory/__heap_base i32 (i32.const 102608))
 (memory $0 2)
 (data $0 (i32.const 65548) "\1c\01\00\00\00\00\00\00\00\00\00\00\04\00\00\00\04\01\00\00[\01f\01p\01\8d\01\a8\01\c5\01\e4\01\ef\01\f4\014\02N\02\ac\02\c4\02\db\02M\03\ad\03\d2\03\e8\03\ff\032\04E\04^\04s\04\86\04\99\04\b8\04\d7\04\ee\04\t\05 \05e\05\86\05\9d\05\c8\05\e3\05\1b\06\1e\06R\06m\06\82\06\aa\06\af\06\b2\06\c2\06\fb\06\18\07\1b\07&\07<\07X\07^\07\a0\07\e3\07\f8\07\ff\07\0c\08,\083\08@\08\9c\08\a2\08\b9\08\bc\08\c1\08\cc\08\e4\08\f8\08\05\t\08\t\ae\n\b6\n\d2\n\e7\n \0bE\0bl\0b{\0b\80\0b\86\0b\be\0b\d8\0b \0cJ\0cu\0cy\0c\90\0c\a6\0c\e6\0c\fe\0c\81\r\99\r\d3\r\eb\r\11\0e+\0eC\0en\0ed\0f\b0\10\11\11!\11\'\11.\11R\11\d5\11\de\11\f4\11\00\12%\12*\121\12m\12\fa\12\12\13\99\13\c0\14\d8\14\cb\15\e5\15\04\16R\16\ef\16\1e\17D\17G\17e\17\83\17\86\17\93\17\a0\17\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 65836) "\ac\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\96\00\00\00\00\00\01\00\02\00\05\00\05\05\07\05\b2\05\ee\05\f8\05\fb\05\07\06#\064\06E\06S\06p\06\83\06\bb\06\e7\061\07\d1\07M\08e\08n\08\82\08\c8\08\e9\08\94\0b\ad\0cH\r\f0\rH\0e\8f\0e\9e\0e\c0\0e\ca\0e\de\0e5\0f\98\0f\a9\0f\cd\0f\de\0f\00\10\11\10\"\103\10D\10z\10\b7\105\11\a3\11\b5\11\03\124\12R\12p\12\bf\12\15\13q\13\f0\14\01\15\12\15#\154\15E\15Y\16\b6\16\bf\16\d6\16\f4\16\05\17!\17L\17f\17\8b\17\00\00\00\00\00\00")
 (data $2 (i32.const 66012) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\n\00\00\00\ed\02\f0\05\e6\n\9c\0b#\0e\00\00")
 (data $3 (i32.const 66044) ",\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 66092) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $5 (i32.const 66140) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00")
 (data $6 (i32.const 66204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $7 (i32.const 66268) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 66336) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 66368) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 66396) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 66460) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 66512) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $13 (i32.const 66540) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 66604) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 66636) ",\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\10\00\00\00@\04\01\00@\04\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 66684) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00O\00p\00e\00r\00a\00t\00i\00o\00n\00 \00(\00\00\00\00\00\00\00")
 (data $17 (i32.const 66748) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00)\00\00\00\00\00\00\00\00\00\00\00")
 (data $18 (i32.const 66780) "\1c\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\0c\00\00\00\90\04\01\00\00\00\00\00\d0\04\01\00")
 (data $19 (i32.const 66812) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $20 (i32.const 66940) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $21 (i32.const 67004) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $22 (i32.const 67036) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $23 (i32.const 67436) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $24 (i32.const 68492) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $25 (i32.const 68588) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $26 (i32.const 68620) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00d\00e\00b\00u\00g\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $27 (i32.const 68684) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00N\00o\00t\00 \00a\00 \00r\00e\00g\00i\00s\00t\00e\00r\00:\00 \00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $28 (i32.const 68748) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $29 (i32.const 68812) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00v\00a\00l\00u\00e\00 \00")
 (data $30 (i32.const 68860) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00S\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w\00")
 (data $31 (i32.const 68908) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00E\00m\00p\00t\00y\00 \00s\00t\00a\00c\00k\00\00\00\00\00\00\00")
 (data $32 (i32.const 68956) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00C\00u\00r\00r\00e\00n\00t\00 \00s\00t\00a\00t\00e\00:\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $33 (i32.const 69020) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00,\00 \00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 69052) ",\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\10\00\00\00p\r\01\00\00\00\00\00\b0\r\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $35 (i32.const 69100) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00l\00\00\00[\00f\00u\00n\00c\00t\00i\00o\00n\00 \00o\00v\00e\00r\00r\00i\00d\00i\00n\00g\00 \00#\006\000\004\009\00 \00c\00a\00l\00l\00e\00d\00,\00 \00c\00o\00n\00t\00i\00n\00u\00e\00 \00f\00r\00o\00m\00 \00p\00c\00:\00 \00(\00")
 (data $36 (i32.const 69228) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00)\00]\00\00\00\00\00\00\00\00\00")
 (data $37 (i32.const 69260) "\1c\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\0c\00\00\00\00\0e\01\00\00\00\00\00\80\0e\01\00")
 (data $38 (i32.const 69292) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00 \00(\00d\00y\00n\00a\00m\00i\00c\00)\00\00\00\00\00\00\00\00\00")
 (data $39 (i32.const 69340) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00,\00\00\00 \00 \00 \00 \00d\00e\00b\00u\00g\00:\00 \00c\00a\00l\00l\00 \00f\00r\00o\00m\00 \00(\00")
 (data $40 (i32.const 69404) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00)\00 \00t\00o\00 \00(\00")
 (data $41 (i32.const 69436) ",\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\18\00\00\00\f0\0e\01\00\00\00\00\000\0f\01\00\00\00\00\00\d0\04\01\00\00\00\00\00\00\00\00\00")
 (data $42 (i32.const 69484) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data $43 (i32.const 69532) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $44 (i32.const 69580) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00c\00o\00m\00m\00a\00n\00d\00 \00(\00\00\00\00\00\00\00\00\00\00\00")
 (data $45 (i32.const 69644) "\1c\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\0c\00\00\00\e0\0f\01\00\00\00\00\00\d0\04\01\00")
 (data $46 (i32.const 69676) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data $47 (i32.const 69740) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data $48 (i32.const 69808) "\07\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\a4\00\00\00B\00\00\00\04A\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "readMemory" (func $assembly/index/readMemory))
 (export "setDebugMode" (func $assembly/index/setDebugMode))
 (export "setRegisterValue" (func $assembly/index/setRegisterValue))
 (export "getCurrentPc" (func $assembly/index/getCurrentPc))
 (export "run" (func $assembly/index/run))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "putUserInput" (func $export:assembly/index/putUserInput))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 66288
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 66288
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 66288
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 66416
   i32.const 66480
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 66288
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 66560
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 66560
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 66560
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 66288
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 66224
   i32.const 66560
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 66560
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 66560
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 66560
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 66224
   i32.const 66288
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $start:assembly/index
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 66336
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 66368
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 66512
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  global.get $assembly/index/STACK_CAP
  call $~lib/staticarray/StaticArray<u16>#constructor
  global.set $assembly/index/stack
 )
 (func $assembly/index/readMemory (param $offset i32) (result i32)
  local.get $offset
  i32.load16_u
  return
 )
 (func $assembly/index/setDebugMode (param $enable i32)
  local.get $enable
  i32.const 0
  i32.ne
  global.set $assembly/index/debugMode
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/staticarray/StaticArray<u16>#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/staticarray/StaticArray<u16>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  local.get $index
  i32.const 1
  i32.shl
  i32.add
  local.get $value
  i32.store16
  i32.const 0
  drop
 )
 (func $assembly/index/getCurrentPc (result i32)
  global.get $assembly/index/pc
  return
 )
 (func $assembly/index/putUserInput (param $inputString i32)
  local.get $inputString
  global.set $assembly/index/inputBuffer
 )
 (func $assembly/index/loadOp (result i32)
  (local $opCode i32)
  global.get $assembly/index/pc
  i32.const 2
  i32.mul
  i32.const 65535
  i32.and
  i32.load16_u
  local.set $opCode
  global.get $assembly/index/pc
  i32.const 1
  i32.add
  i32.const 65535
  i32.and
  global.set $assembly/index/pc
  local.get $opCode
  return
 )
 (func $~lib/util/number/decimalCount32 (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 67036
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits1
    i32.const 67036
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 67036
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 67036
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 67456
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 67456
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 68512
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 68512
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/U16#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  i32.const 65535
  i32.and
  local.get $radix
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 66288
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 2
  i32.shr_u
  return
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $assembly/index/halt (result i32)
  i32.const 0
  return
 )
 (func $~lib/array/Array<u8>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<u8>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $assembly/index/run (result i32)
  (local $returnType i32)
  (local $1 i32)
  loop $while-continue|0
   i32.const 1
   if
    call $assembly/index/nextOp
    local.set $returnType
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $returnType
        local.set $1
        local.get $1
        i32.const 0
        i32.eq
        br_if $case0|1
        local.get $1
        i32.const 1
        i32.eq
        br_if $case1|1
        local.get $1
        i32.const 2
        i32.eq
        br_if $case2|1
        br $break|1
       end
       i32.const 0
       return
      end
      br $break|1
     end
     i32.const 1
     return
    end
    br $while-continue|0
   end
  end
  unreachable
 )
 (func $~lib/rt/itcms/__pin (param $ptr i32) (result i32)
  (local $obj i32)
  local.get $ptr
  if
   local.get $ptr
   i32.const 20
   i32.sub
   local.set $obj
   local.get $obj
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 69696
    i32.const 66288
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__unpin (param $ptr i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 69760
   i32.const 66288
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.ne
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i32.const 200
  i64.extend_i32_u
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $assembly/index/dynamicCalls
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/reg
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/stack
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/inputBuffer
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 66416
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 66112
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 69504
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 66224
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 69696
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 69760
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 67456
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 68512
  local.get $0
  call $~lib/rt/itcms/__visit
  global.get $assembly/debug/labelsOffsets
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/debug/functionsOffsets
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $~lib/array/Array<u8>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<u8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__visit
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  i32.const 1
  drop
  local.get $this
  local.set $cur
  local.get $cur
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/staticarray/StaticArray<~lib/string/String>
    block $~lib/array/Array<u8>
     block $~lib/staticarray/StaticArray<u16>
      block $~lib/arraybuffer/ArrayBufferView
       block $~lib/string/String
        block $~lib/arraybuffer/ArrayBuffer
         block $~lib/object/Object
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/staticarray/StaticArray<u16> $~lib/array/Array<u8> $~lib/staticarray/StaticArray<~lib/string/String> $invalid
         end
         return
        end
        return
       end
       return
      end
      local.get $0
      local.get $1
      call $~lib/arraybuffer/ArrayBufferView~visit
      return
     end
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<u8>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/string/String>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:assembly/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 102640
   i32.const 102688
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/staticarray/StaticArray<u16>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.ge_u
  if
   i32.const 66416
   i32.const 66160
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $index
  local.get $value
  call $~lib/staticarray/StaticArray<u16>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/setRegisterValue (param $regIndex i32) (param $value i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/reg
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $regIndex
  i32.const 255
  i32.and
  local.get $value
  call $~lib/staticarray/StaticArray<u16>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/string/joinStringArray (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $4 i32)
  (local $estLen i32)
  (local $value i32)
  (local $i i32)
  (local $offset i32)
  (local $sepLen i32)
  (local $result i32)
  (local $i|11 i32)
  (local $valueLen i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 68608
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $dataStart
   i32.load
   local.tee $4
   i32.store
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 68608
   end
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  i32.const 0
  local.set $estLen
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $estLen
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     i32.add
     local.set $estLen
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $offset
  local.get $separator
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $~lib/string/String#get:length
  local.set $sepLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  local.get $sepLen
  local.get $lastIndex
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store offset=12
  i32.const 0
  local.set $i|11
  loop $for-loop|1
   local.get $i|11
   local.get $lastIndex
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i|11
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     local.set $valueLen
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $value
     local.get $valueLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $valueLen
     i32.add
     local.set $offset
    end
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i|11
    i32.const 1
    i32.add
    local.set $i|11
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  local.get $value
  i32.const 0
  i32.ne
  if
   local.get $result
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $value
   local.get $value
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=8
   local.get $13
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   memory.copy
  end
  local.get $result
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $this i32) (param $separator i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $this
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  local.get $separator
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/util/string/joinStringArray
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/debug/reportOp (param $opCode i32) (param $opOffset i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $break|0
   block $case22|0
    block $case21|0
     block $case20|0
      block $case19|0
       block $case18|0
        block $case17|0
         block $case16|0
          block $case15|0
           block $case14|0
            block $case13|0
             block $case12|0
              block $case11|0
               block $case10|0
                block $case9|0
                 block $case8|0
                  block $case7|0
                   block $case6|0
                    block $case5|0
                     block $case4|0
                      block $case3|0
                       block $case2|0
                        block $case1|0
                         block $case0|0
                          local.get $opCode
                          i32.const 65535
                          i32.and
                          local.set $2
                          local.get $2
                          i32.const 0
                          i32.eq
                          br_if $case0|0
                          local.get $2
                          i32.const 18
                          i32.eq
                          br_if $case1|0
                          local.get $2
                          i32.const 21
                          i32.eq
                          br_if $case2|0
                          local.get $2
                          i32.const 2
                          i32.eq
                          br_if $case3|0
                          local.get $2
                          i32.const 3
                          i32.eq
                          br_if $case4|0
                          local.get $2
                          i32.const 6
                          i32.eq
                          br_if $case5|0
                          local.get $2
                          i32.const 17
                          i32.eq
                          br_if $case6|0
                          local.get $2
                          i32.const 19
                          i32.eq
                          br_if $case7|0
                          local.get $2
                          i32.const 20
                          i32.eq
                          br_if $case8|0
                          local.get $2
                          i32.const 1
                          i32.eq
                          br_if $case9|0
                          local.get $2
                          i32.const 7
                          i32.eq
                          br_if $case10|0
                          local.get $2
                          i32.const 8
                          i32.eq
                          br_if $case11|0
                          local.get $2
                          i32.const 14
                          i32.eq
                          br_if $case12|0
                          local.get $2
                          i32.const 15
                          i32.eq
                          br_if $case13|0
                          local.get $2
                          i32.const 16
                          i32.eq
                          br_if $case14|0
                          local.get $2
                          i32.const 4
                          i32.eq
                          br_if $case15|0
                          local.get $2
                          i32.const 5
                          i32.eq
                          br_if $case16|0
                          local.get $2
                          i32.const 9
                          i32.eq
                          br_if $case17|0
                          local.get $2
                          i32.const 10
                          i32.eq
                          br_if $case18|0
                          local.get $2
                          i32.const 11
                          i32.eq
                          br_if $case19|0
                          local.get $2
                          i32.const 12
                          i32.eq
                          br_if $case20|0
                          local.get $2
                          i32.const 13
                          i32.eq
                          br_if $case21|0
                          br $case22|0
                         end
                        end
                       end
                       i32.const 1
                       local.get $opOffset
                       i32.const 1
                       call $assembly/env/reportOffset
                       br $break|0
                      end
                     end
                    end
                   end
                  end
                 end
                 i32.const 1
                 local.get $opOffset
                 i32.const 2
                 call $assembly/env/reportOffset
                 br $break|0
                end
               end
              end
             end
            end
           end
           i32.const 1
           local.get $opOffset
           i32.const 3
           call $assembly/env/reportOffset
           br $break|0
          end
         end
        end
       end
      end
     end
    end
    i32.const 1
    local.get $opOffset
    i32.const 4
    call $assembly/env/reportOffset
    br $break|0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $opCode
   i32.const 10
   call $~lib/number/U16#toString
   local.tee $3
   i32.store
   i32.const 66800
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 1
   local.get $3
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 66800
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 68608
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 68640
   i32.const 58
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#concat (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 68608
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/index/readRegister (result i32)
  (local $value i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $assembly/index/pc
  i32.const 2
  i32.mul
  i32.const 65535
  i32.and
  i32.load16_u
  local.set $value
  global.get $assembly/index/pc
  i32.const 1
  i32.add
  i32.const 65535
  i32.and
  global.set $assembly/index/pc
  local.get $value
  global.get $assembly/index/NUM_CAP
  i32.lt_u
  if
   i32.const 68704
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $value
   i32.const 10
   call $~lib/number/U16#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/string/String#concat
   i32.const 68768
   i32.const 69
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  global.get $assembly/index/REGISTER_CAP
  i32.ge_u
  if
   i32.const 68704
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $value
   i32.const 10
   call $~lib/number/U16#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/string/String#concat
   i32.const 68768
   i32.const 73
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  global.get $assembly/index/NUM_CAP
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/staticarray/StaticArray<u16>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.ge_u
  if
   i32.const 66416
   i32.const 66160
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.get $index
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  local.set $value
  i32.const 0
  drop
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/index/readValue (result i32)
  (local $value i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $assembly/index/pc
  i32.const 2
  i32.mul
  i32.const 65535
  i32.and
  i32.load16_u
  local.set $value
  global.get $assembly/index/pc
  i32.const 1
  i32.add
  i32.const 65535
  i32.and
  global.set $assembly/index/pc
  local.get $value
  global.get $assembly/index/NUM_CAP
  i32.lt_u
  if
   local.get $value
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  local.get $value
  global.get $assembly/index/REGISTER_CAP
  i32.lt_u
  if
   global.get $assembly/index/reg
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $value
   global.get $assembly/index/NUM_CAP
   i32.sub
   i32.const 65535
   i32.and
   call $~lib/staticarray/StaticArray<u16>#__get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 68832
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $value
  i32.const 10
  call $~lib/number/U16#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/string/String#concat
  i32.const 68768
  i32.const 91
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/pushStack (param $value i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/stackIndex
  global.get $assembly/index/STACK_CAP
  i32.eq
  if
   i32.const 68880
   i32.const 68768
   i32.const 42
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/index/stack
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  global.get $assembly/index/stackIndex
  local.get $value
  call $~lib/staticarray/StaticArray<u16>#__set
  global.get $assembly/index/stackIndex
  i32.const 1
  i32.add
  i32.const 65535
  i32.and
  global.set $assembly/index/stackIndex
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/popStack (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/stackIndex
  i32.const 0
  i32.eq
  if
   i32.const 68928
   i32.const 68768
   i32.const 51
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/index/stackIndex
  i32.const 1
  i32.sub
  i32.const 65535
  i32.and
  global.set $assembly/index/stackIndex
  global.get $assembly/index/stack
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  global.get $assembly/index/stackIndex
  call $~lib/staticarray/StaticArray<u16>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $~lib/staticarray/StaticArray<u16>#indexOf (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $length i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $length
  local.get $length
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $fromIndex
   local.get $length
   i32.ge_s
  end
  if
   i32.const -1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $fromIndex
  i32.const 0
  i32.lt_s
  if
   local.get $length
   local.get $fromIndex
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $fromIndex
  end
  loop $while-continue|0
   local.get $fromIndex
   local.get $length
   i32.lt_s
   if
    local.get $this
    local.get $fromIndex
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.get $value
    i32.const 65535
    i32.and
    i32.eq
    if
     local.get $fromIndex
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    local.get $fromIndex
    i32.const 1
    i32.add
    local.set $fromIndex
    br $while-continue|0
   end
  end
  i32.const -1
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/staticarray/StaticArray<u16>#includes (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $value
  local.get $fromIndex
  call $~lib/staticarray/StaticArray<u16>#indexOf
  i32.const 0
  i32.ge_s
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/console/console.log (param $message i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $message
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/bindings/dom/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u8>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<u8>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<u8>#shift (param $this i32) (result i32)
  (local $len i32)
  (local $base i32)
  (local $element i32)
  (local $lastIndex i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<u8>#get:length_
  local.set $len
  local.get $len
  i32.const 1
  i32.lt_s
  if
   i32.const 69504
   i32.const 69552
   i32.const 330
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<u8>#get:dataStart
  local.set $base
  local.get $base
  i32.load8_u
  local.set $element
  local.get $len
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $base
  local.get $base
  i32.const 1
  i32.add
  local.get $lastIndex
  i32.const 0
  i32.shl
  memory.copy
  i32.const 0
  drop
  local.get $base
  local.get $lastIndex
  i32.const 0
  i32.shl
  i32.add
  i32.const 0
  i32.store8
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $lastIndex
  call $~lib/array/Array<u8>#set:length_
  local.get $element
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $assembly/index/nextOp (result i32)
  (local $opOffset i32)
  (local $opCode i32)
  (local $2 i32)
  (local $a i32)
  (local $b i32)
  (local $a|5 i32)
  (local $a|6 i32)
  (local $a|7 i32)
  (local $b|8 i32)
  (local $c i32)
  (local $a|10 i32)
  (local $b|11 i32)
  (local $c|12 i32)
  (local $a|13 i32)
  (local $a|14 i32)
  (local $a|15 i32)
  (local $b|16 i32)
  (local $c|17 i32)
  (local $sum i32)
  (local $a|19 i32)
  (local $b|20 i32)
  (local $c|21 i32)
  (local $a|22 i32)
  (local $b|23 i32)
  (local $c|24 i32)
  (local $a|25 i32)
  (local $b|26 i32)
  (local $c|27 i32)
  (local $a|28 i32)
  (local $b|29 i32)
  (local $c|30 i32)
  (local $a|31 i32)
  (local $b|32 i32)
  (local $a|33 i32)
  (local $b|34 i32)
  (local $a|35 i32)
  (local $b|36 i32)
  (local $a|37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $modifier i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $value i32)
  (local $charCode i32)
  (local $a|47 i32)
  (local $48 i32)
  (local $49 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  global.get $assembly/index/pc
  local.set $opOffset
  call $assembly/index/loadOp
  local.set $opCode
  local.get $opCode
  local.get $opOffset
  call $assembly/debug/reportOp
  block $break|0
   block $case22|0
    block $case21|0
     block $case20|0
      block $case19|0
       block $case18|0
        block $case17|0
         block $case16|0
          block $case15|0
           block $case14|0
            block $case13|0
             block $case12|0
              block $case11|0
               block $case10|0
                block $case9|0
                 block $case8|0
                  block $case7|0
                   block $case6|0
                    block $case5|0
                     block $case4|0
                      block $case3|0
                       block $case2|0
                        block $case1|0
                         block $case0|0
                          local.get $opCode
                          local.set $2
                          local.get $2
                          i32.const 0
                          i32.eq
                          br_if $case0|0
                          local.get $2
                          i32.const 1
                          i32.eq
                          br_if $case1|0
                          local.get $2
                          i32.const 2
                          i32.eq
                          br_if $case2|0
                          local.get $2
                          i32.const 3
                          i32.eq
                          br_if $case3|0
                          local.get $2
                          i32.const 4
                          i32.eq
                          br_if $case4|0
                          local.get $2
                          i32.const 5
                          i32.eq
                          br_if $case5|0
                          local.get $2
                          i32.const 6
                          i32.eq
                          br_if $case6|0
                          local.get $2
                          i32.const 7
                          i32.eq
                          br_if $case7|0
                          local.get $2
                          i32.const 8
                          i32.eq
                          br_if $case8|0
                          local.get $2
                          i32.const 9
                          i32.eq
                          br_if $case9|0
                          local.get $2
                          i32.const 10
                          i32.eq
                          br_if $case10|0
                          local.get $2
                          i32.const 11
                          i32.eq
                          br_if $case11|0
                          local.get $2
                          i32.const 12
                          i32.eq
                          br_if $case12|0
                          local.get $2
                          i32.const 13
                          i32.eq
                          br_if $case13|0
                          local.get $2
                          i32.const 14
                          i32.eq
                          br_if $case14|0
                          local.get $2
                          i32.const 15
                          i32.eq
                          br_if $case15|0
                          local.get $2
                          i32.const 16
                          i32.eq
                          br_if $case16|0
                          local.get $2
                          i32.const 17
                          i32.eq
                          br_if $case17|0
                          local.get $2
                          i32.const 18
                          i32.eq
                          br_if $case18|0
                          local.get $2
                          i32.const 19
                          i32.eq
                          br_if $case19|0
                          local.get $2
                          i32.const 20
                          i32.eq
                          br_if $case20|0
                          local.get $2
                          i32.const 21
                          i32.eq
                          br_if $case21|0
                          br $case22|0
                         end
                         call $assembly/index/halt
                         local.set $49
                         global.get $~lib/memory/__stack_pointer
                         i32.const 44
                         i32.add
                         global.set $~lib/memory/__stack_pointer
                         local.get $49
                         return
                        end
                        call $assembly/index/readRegister
                        local.set $a
                        call $assembly/index/readValue
                        local.set $b
                        global.get $assembly/index/reg
                        local.set $49
                        global.get $~lib/memory/__stack_pointer
                        local.get $49
                        i32.store
                        local.get $49
                        local.get $a
                        i32.const 255
                        i32.and
                        local.get $b
                        call $~lib/staticarray/StaticArray<u16>#__set
                        br $break|0
                       end
                       call $assembly/index/readValue
                       local.set $a|5
                       local.get $a|5
                       call $assembly/index/pushStack
                       br $break|0
                      end
                      call $assembly/index/readRegister
                      local.set $a|6
                      global.get $assembly/index/reg
                      local.set $49
                      global.get $~lib/memory/__stack_pointer
                      local.get $49
                      i32.store
                      local.get $49
                      local.get $a|6
                      i32.const 255
                      i32.and
                      call $assembly/index/popStack
                      call $~lib/staticarray/StaticArray<u16>#__set
                      br $break|0
                     end
                     call $assembly/index/readRegister
                     local.set $a|7
                     call $assembly/index/readValue
                     local.set $b|8
                     call $assembly/index/readValue
                     local.set $c
                     global.get $assembly/index/reg
                     local.set $49
                     global.get $~lib/memory/__stack_pointer
                     local.get $49
                     i32.store
                     local.get $49
                     local.get $a|7
                     i32.const 255
                     i32.and
                     local.get $b|8
                     i32.const 65535
                     i32.and
                     local.get $c
                     i32.const 65535
                     i32.and
                     i32.eq
                     if (result i32)
                      i32.const 1
                     else
                      i32.const 0
                     end
                     call $~lib/staticarray/StaticArray<u16>#__set
                     br $break|0
                    end
                    call $assembly/index/readRegister
                    local.set $a|10
                    call $assembly/index/readValue
                    local.set $b|11
                    call $assembly/index/readValue
                    local.set $c|12
                    global.get $assembly/index/reg
                    local.set $49
                    global.get $~lib/memory/__stack_pointer
                    local.get $49
                    i32.store
                    local.get $49
                    local.get $a|10
                    i32.const 255
                    i32.and
                    local.get $b|11
                    i32.const 65535
                    i32.and
                    local.get $c|12
                    i32.const 65535
                    i32.and
                    i32.gt_u
                    if (result i32)
                     i32.const 1
                    else
                     i32.const 0
                    end
                    call $~lib/staticarray/StaticArray<u16>#__set
                    br $break|0
                   end
                   call $assembly/index/readValue
                   i32.const 65535
                   i32.and
                   global.set $assembly/index/pc
                   global.get $assembly/debug/labelsOffsets
                   local.set $49
                   global.get $~lib/memory/__stack_pointer
                   local.get $49
                   i32.store
                   local.get $49
                   global.get $assembly/index/pc
                   i32.const 0
                   call $~lib/staticarray/StaticArray<u16>#includes
                   i32.eqz
                   if
                    global.get $assembly/index/pc
                    i32.const 0
                    call $assembly/env/onNewLabel
                   end
                   br $break|0
                  end
                  call $assembly/index/readValue
                  local.set $a|13
                  local.get $a|13
                  i32.const 65535
                  i32.and
                  i32.const 0
                  i32.ne
                  if
                   call $assembly/index/readValue
                   i32.const 65535
                   i32.and
                   global.set $assembly/index/pc
                   global.get $assembly/debug/labelsOffsets
                   local.set $49
                   global.get $~lib/memory/__stack_pointer
                   local.get $49
                   i32.store
                   local.get $49
                   global.get $assembly/index/pc
                   i32.const 0
                   call $~lib/staticarray/StaticArray<u16>#includes
                   i32.eqz
                   if
                    global.get $assembly/index/pc
                    i32.const 0
                    call $assembly/env/onNewLabel
                   end
                  else
                   global.get $assembly/index/pc
                   i32.const 1
                   i32.add
                   i32.const 65535
                   i32.and
                   global.set $assembly/index/pc
                  end
                  br $break|0
                 end
                 call $assembly/index/readValue
                 local.set $a|14
                 local.get $a|14
                 i32.const 65535
                 i32.and
                 i32.const 0
                 i32.eq
                 if
                  call $assembly/index/readValue
                  i32.const 65535
                  i32.and
                  global.set $assembly/index/pc
                  global.get $assembly/debug/labelsOffsets
                  local.set $49
                  global.get $~lib/memory/__stack_pointer
                  local.get $49
                  i32.store
                  local.get $49
                  global.get $assembly/index/pc
                  i32.const 0
                  call $~lib/staticarray/StaticArray<u16>#includes
                  i32.eqz
                  if
                   global.get $assembly/index/pc
                   i32.const 0
                   call $assembly/env/onNewLabel
                  end
                 else
                  global.get $assembly/index/pc
                  i32.const 1
                  i32.add
                  i32.const 65535
                  i32.and
                  global.set $assembly/index/pc
                 end
                 br $break|0
                end
                call $assembly/index/readRegister
                local.set $a|15
                call $assembly/index/readValue
                local.set $b|16
                call $assembly/index/readValue
                local.set $c|17
                local.get $b|16
                local.get $c|17
                i32.add
                local.set $sum
                local.get $sum
                i32.const 65535
                i32.and
                global.get $assembly/index/NUM_CAP
                i32.ge_u
                if
                 local.get $sum
                 global.get $assembly/index/NUM_CAP
                 i32.sub
                 local.set $sum
                end
                global.get $assembly/index/reg
                local.set $49
                global.get $~lib/memory/__stack_pointer
                local.get $49
                i32.store
                local.get $49
                local.get $a|15
                i32.const 255
                i32.and
                local.get $sum
                call $~lib/staticarray/StaticArray<u16>#__set
                br $break|0
               end
               call $assembly/index/readRegister
               local.set $a|19
               call $assembly/index/readValue
               local.set $b|20
               call $assembly/index/readValue
               local.set $c|21
               global.get $assembly/index/reg
               local.set $49
               global.get $~lib/memory/__stack_pointer
               local.get $49
               i32.store
               local.get $49
               local.get $a|19
               i32.const 255
               i32.and
               local.get $b|20
               local.get $c|21
               i32.mul
               i32.const 65535
               i32.and
               global.get $assembly/index/NUM_CAP
               i32.rem_u
               call $~lib/staticarray/StaticArray<u16>#__set
               br $break|0
              end
              call $assembly/index/readRegister
              local.set $a|22
              call $assembly/index/readValue
              local.set $b|23
              call $assembly/index/readValue
              local.set $c|24
              global.get $assembly/index/reg
              local.set $49
              global.get $~lib/memory/__stack_pointer
              local.get $49
              i32.store
              local.get $49
              local.get $a|22
              i32.const 255
              i32.and
              local.get $b|23
              i32.const 65535
              i32.and
              local.get $c|24
              i32.const 65535
              i32.and
              i32.rem_u
              call $~lib/staticarray/StaticArray<u16>#__set
              br $break|0
             end
             call $assembly/index/readRegister
             local.set $a|25
             call $assembly/index/readValue
             local.set $b|26
             call $assembly/index/readValue
             local.set $c|27
             global.get $assembly/index/reg
             local.set $49
             global.get $~lib/memory/__stack_pointer
             local.get $49
             i32.store
             local.get $49
             local.get $a|25
             i32.const 255
             i32.and
             local.get $b|26
             local.get $c|27
             i32.and
             call $~lib/staticarray/StaticArray<u16>#__set
             br $break|0
            end
            call $assembly/index/readRegister
            local.set $a|28
            call $assembly/index/readValue
            local.set $b|29
            call $assembly/index/readValue
            local.set $c|30
            global.get $assembly/index/reg
            local.set $49
            global.get $~lib/memory/__stack_pointer
            local.get $49
            i32.store
            local.get $49
            local.get $a|28
            i32.const 255
            i32.and
            local.get $b|29
            local.get $c|30
            i32.or
            call $~lib/staticarray/StaticArray<u16>#__set
            br $break|0
           end
           call $assembly/index/readRegister
           local.set $a|31
           call $assembly/index/readValue
           local.set $b|32
           global.get $assembly/index/reg
           local.set $49
           global.get $~lib/memory/__stack_pointer
           local.get $49
           i32.store
           local.get $49
           local.get $a|31
           i32.const 255
           i32.and
           local.get $b|32
           i32.const 32767
           i32.xor
           call $~lib/staticarray/StaticArray<u16>#__set
           br $break|0
          end
          call $assembly/index/readRegister
          local.set $a|33
          call $assembly/index/readValue
          local.set $b|34
          global.get $assembly/index/reg
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store
          local.get $49
          local.get $a|33
          i32.const 255
          i32.and
          local.get $b|34
          i32.const 2
          i32.mul
          i32.const 65535
          i32.and
          i32.load16_u
          call $~lib/staticarray/StaticArray<u16>#__set
          i32.const 2
          local.get $b|34
          i32.const 1
          call $assembly/env/reportOffset
          br $break|0
         end
         call $assembly/index/readValue
         local.set $a|35
         call $assembly/index/readValue
         local.set $b|36
         local.get $a|35
         i32.const 2
         i32.mul
         i32.const 65535
         i32.and
         local.get $b|36
         i32.store16
         i32.const 4
         local.get $a|35
         i32.const 1
         call $assembly/env/reportOffset
         br $break|0
        end
        call $assembly/index/readValue
        local.set $a|37
        global.get $assembly/debug/functionsOffsets
        local.set $49
        global.get $~lib/memory/__stack_pointer
        local.get $49
        i32.store
        local.get $49
        local.get $a|37
        i32.const 0
        call $~lib/staticarray/StaticArray<u16>#includes
        i32.eqz
        if
         local.get $a|37
         i32.const 1
         call $assembly/env/onNewLabel
        end
        local.get $a|37
        i32.const 65535
        i32.and
        i32.const 6027
        i32.eq
        if
         global.get $assembly/index/reg
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store
         local.get $49
         i32.const 7
         call $~lib/staticarray/StaticArray<u16>#__get
         i32.const 25734
         i32.eq
         if
          global.get $~lib/memory/__stack_pointer
          global.get $assembly/index/reg
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=4
          local.get $49
          i32.const 0
          call $~lib/staticarray/StaticArray<u16>#__get
          i32.const 10
          call $~lib/number/U16#toString
          local.tee $38
          i32.store offset=8
          global.get $~lib/memory/__stack_pointer
          global.get $assembly/index/reg
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=4
          local.get $49
          i32.const 1
          call $~lib/staticarray/StaticArray<u16>#__get
          i32.const 10
          call $~lib/number/U16#toString
          local.tee $39
          i32.store offset=12
          i32.const 69072
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=4
          local.get $49
          i32.const 1
          local.get $38
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=16
          local.get $49
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          i32.const 69072
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=4
          local.get $49
          i32.const 3
          local.get $39
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=16
          local.get $49
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          i32.const 69072
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=4
          local.get $49
          i32.const 68608
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=16
          local.get $49
          call $~lib/staticarray/StaticArray<~lib/string/String>#join
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store
          local.get $49
          call $~lib/console/console.log
          global.get $assembly/index/reg
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store
          local.get $49
          i32.const 0
          i32.const 6
          call $~lib/staticarray/StaticArray<u16>#__set
          global.get $~lib/memory/__stack_pointer
          global.get $assembly/index/pc
          i32.const 10
          call $~lib/number/U16#toString
          local.tee $40
          i32.store offset=20
          i32.const 69280
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=4
          local.get $49
          i32.const 1
          local.get $40
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=16
          local.get $49
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          i32.const 69280
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=4
          local.get $49
          i32.const 68608
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store offset=16
          local.get $49
          call $~lib/staticarray/StaticArray<~lib/string/String>#join
          local.set $49
          global.get $~lib/memory/__stack_pointer
          local.get $49
          i32.store
          local.get $49
          call $~lib/console/console.log
          br $break|0
         end
        end
        global.get $assembly/index/pc
        call $assembly/index/pushStack
        local.get $a|37
        i32.const 65535
        i32.and
        global.set $assembly/index/pc
        global.get $assembly/index/debugMode
        if
         local.get $opOffset
         i32.const 1520
         i32.eq
         if (result i32)
          local.get $a|37
          i32.const 65535
          i32.and
          i32.const 1553
          i32.eq
         else
          i32.const 0
         end
         if
          br $break|0
         end
         local.get $opOffset
         i32.const 1558
         i32.eq
         if (result i32)
          local.get $a|37
          i32.const 65535
          i32.and
          i32.const 2147
          i32.eq
         else
          i32.const 0
         end
         if
          br $break|0
         end
         global.get $~lib/memory/__stack_pointer
         global.get $assembly/index/dynamicCalls
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store
         local.get $49
         local.get $opOffset
         i32.const 0
         call $~lib/staticarray/StaticArray<u16>#includes
         if (result i32)
          i32.const 69312
         else
          i32.const 68608
         end
         local.tee $modifier
         i32.store offset=24
         global.get $~lib/memory/__stack_pointer
         local.get $opOffset
         i32.const 10
         call $~lib/number/U16#toString
         local.tee $42
         i32.store offset=28
         global.get $~lib/memory/__stack_pointer
         local.get $a|37
         i32.const 10
         call $~lib/number/U16#toString
         local.tee $43
         i32.store offset=32
         global.get $~lib/memory/__stack_pointer
         local.get $modifier
         local.tee $44
         i32.store offset=36
         i32.const 69456
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store offset=4
         local.get $49
         i32.const 1
         local.get $42
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store offset=16
         local.get $49
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         i32.const 69456
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store offset=4
         local.get $49
         i32.const 3
         local.get $43
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store offset=16
         local.get $49
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         i32.const 69456
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store offset=4
         local.get $49
         i32.const 5
         local.get $44
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store offset=16
         local.get $49
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         i32.const 69456
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store offset=4
         local.get $49
         i32.const 68608
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store offset=16
         local.get $49
         call $~lib/staticarray/StaticArray<~lib/string/String>#join
         local.set $49
         global.get $~lib/memory/__stack_pointer
         local.get $49
         i32.store
         local.get $49
         call $~lib/console/console.log
        end
        br $break|0
       end
       global.get $assembly/index/stackIndex
       i32.const 0
       i32.eq
       if
        call $assembly/index/halt
        local.set $49
        global.get $~lib/memory/__stack_pointer
        i32.const 44
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $49
        return
       end
       call $assembly/index/popStack
       global.set $assembly/index/pc
       br $break|0
      end
      call $assembly/index/readValue
      local.set $value
      local.get $value
      call $assembly/env/outputChar
      br $break|0
     end
     global.get $assembly/index/inputBuffer
     local.set $49
     global.get $~lib/memory/__stack_pointer
     local.get $49
     i32.store
     local.get $49
     call $~lib/array/Array<u8>#get:length
     if
      global.get $assembly/index/inputBuffer
      local.set $49
      global.get $~lib/memory/__stack_pointer
      local.get $49
      i32.store
      local.get $49
      call $~lib/array/Array<u8>#shift
      local.set $charCode
      call $assembly/index/readRegister
      local.set $a|47
      global.get $assembly/index/reg
      local.set $49
      global.get $~lib/memory/__stack_pointer
      local.get $49
      i32.store
      local.get $49
      local.get $a|47
      i32.const 255
      i32.and
      local.get $charCode
      call $~lib/staticarray/StaticArray<u16>#__set
     else
      global.get $assembly/index/pc
      i32.const 1
      i32.sub
      i32.const 65535
      i32.and
      global.set $assembly/index/pc
      i32.const 2
      local.set $49
      global.get $~lib/memory/__stack_pointer
      i32.const 44
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $49
      return
     end
     br $break|0
    end
    br $break|0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $opCode
   i32.const 10
   call $~lib/number/U16#toString
   local.tee $48
   i32.store offset=40
   i32.const 69664
   local.set $49
   global.get $~lib/memory/__stack_pointer
   local.get $49
   i32.store
   local.get $49
   i32.const 1
   local.get $48
   local.set $49
   global.get $~lib/memory/__stack_pointer
   local.get $49
   i32.store offset=4
   local.get $49
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 69664
   local.set $49
   global.get $~lib/memory/__stack_pointer
   local.get $49
   i32.store
   local.get $49
   i32.const 68608
   local.set $49
   global.get $~lib/memory/__stack_pointer
   local.get $49
   i32.store offset=4
   local.get $49
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 68768
   i32.const 373
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.set $49
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $49
  return
 )
 (func $~lib/array/Array<u8>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<u8>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/staticarray/StaticArray<u16>#constructor (param $this i32) (param $length i32) (result i32)
  (local $outSize i32)
  (local $out i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $length
  i32.const 1073741820
  i32.const 1
  i32.shr_u
  i32.gt_u
  if
   i32.const 66112
   i32.const 66160
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  i32.const 1
  i32.shl
  local.set $outSize
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $out
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/util/number/utoa32 (param $value i32) (param $radix i32) (result i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|7 i32)
  (local $buffer|8 i32)
  (local $num|9 i32)
  (local $offset|10 i32)
  (local $decimals|11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 66832
   i32.const 66960
   i32.const 350
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 67024
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store
   local.get $out
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|7
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|7
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.set $buffer|8
    local.get $value
    local.set $num|9
    local.get $decimals|7
    local.set $offset|10
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|8
    local.get $num|9
    i64.extend_i32_u
    local.get $offset|10
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|11
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|11
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $value
    i64.extend_i32_u
    local.get $decimals|11
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $out
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $export:assembly/index/putUserInput (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/index/putUserInput
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
