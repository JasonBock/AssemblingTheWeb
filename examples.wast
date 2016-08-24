(module
  (memory 1)
  (export "memory" memory)
  (export "doSomething" $_Z11doSomethingv)
  (export "multiply" $_Z8multiplyff)
  (func $_Z11doSomethingv (result i32)
    (return
      (i32.const 42)
    )
  )
  (func $_Z8multiplyff (param $0 f32) (param $1 f32) (result f32)
    (return
      (f32.mul
        (get_local $0)
        (get_local $1)
      )
    )
  )
)