(module
  (table 0 anyfunc)
  (memory $0 1)
  (export "memory" (memory $0))
  (export "multiply" (func $_Z8multiplyff))
  (func $_Z8multiplyff (param $0 f32) (param $1 f32) (result f32)
    (f32.mul
      (get_local $0)
      (get_local $1)
    )
  )
)