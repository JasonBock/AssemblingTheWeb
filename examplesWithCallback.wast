(module
  (import "imports" "multiplyCallback" (func $multiplyCallback (param f32)))
  (func (export "multiply") (param $0 f32) (param $1 f32)
    get_local $0
    get_local $1
    f32.mul
    call $multiplyCallback
  )
)