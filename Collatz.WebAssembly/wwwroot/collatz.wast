(module
  (func (export "collatz") (param $0 i32) (result i32)
    (local $1 i32)
    (set_local $1
      (i32.const 0)
    )
    (block $label$0
      (br_if $label$0
        (i32.lt_s
          (get_local $0)
          (i32.const 2)
        )
      )
      (set_local $1
        (i32.const 0)
      )
      (loop $label$1
        (set_local $1
          (i32.add
            (get_local $1)
            (i32.const 1)
          )
        )
        (br_if $label$1
          (i32.gt_s
            (tee_local $0
              (select
                (i32.add
                  (i32.mul
                    (get_local $0)
                    (i32.const 3)
                  )
                  (i32.const 1)
                )
                (i32.div_s
                  (get_local $0)
                  (i32.const 2)
                )
                (i32.and
                  (get_local $0)
                  (i32.const 1)
                )
              )
            )
            (i32.const 1)
          )
        )
      )
    )
    (get_local $1)
  )
)
