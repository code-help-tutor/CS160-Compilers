WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
[{ Ast.name = "mod"; param = [("a", Ast.TInt); ("b", Ast.TInt)];
   body =
   (Ast.Seq
      [(Ast.Ite ((Ast.Binary (Ast.Gt, (Ast.Id "a"), (Ast.Id "b"))),
          (Ast.Seq
             [(Ast.Binary (Ast.Sub, (Ast.Id "a"),
                 (Ast.Binary (Ast.Mul,
                    (Ast.Binary (Ast.Div, (Ast.Id "a"), (Ast.Id "b"))),
                    (Ast.Id "b")))
                 ))
               ]),
          (Ast.Seq
             [(Ast.Binary (Ast.Sub, (Ast.Id "b"),
                 (Ast.Binary (Ast.Mul,
                    (Ast.Binary (Ast.Div, (Ast.Id "b"), (Ast.Id "a"))),
                    (Ast.Id "a")))
                 ))
               ])
          ))
        ]);
   return = Ast.TInt };
  { Ast.name = "gcd"; param = [("a", Ast.TInt); ("b", Ast.TInt)];
    body =
    (Ast.Seq
       [(Ast.While (
           (Ast.Binary (Ast.Gt, (Ast.Id "b"), (Ast.Const (Ast.CInt 0)))),
           (Ast.Seq
              [(Ast.Let ("a0", Ast.TInt, (Ast.Id "a")));
                (Ast.Assign ("a", (Ast.Id "b")));
                (Ast.Assign ("b",
                   (Ast.Call ("mod", [(Ast.Id "a0"); (Ast.Id "b")]))))
                ])
           ));
         (Ast.Id "a")]);
    return = Ast.TInt };
  { Ast.name = "pow"; param = [("n", Ast.TInt); ("k", Ast.TInt)];
    body =
    (Ast.Seq
       [(Ast.Let ("r", Ast.TInt, (Ast.Const (Ast.CInt 1))));
         (Ast.While (
            (Ast.Binary (Ast.Gt, (Ast.Id "k"), (Ast.Const (Ast.CInt 0)))),
            (Ast.Seq
               [(Ast.Assign ("r",
                   (Ast.Binary (Ast.Mul, (Ast.Id "r"), (Ast.Id "n")))));
                 (Ast.Assign ("k",
                    (Ast.Binary (Ast.Sub, (Ast.Id "k"),
                       (Ast.Const (Ast.CInt 1))))
                    ))
                 ])
            ));
         (Ast.Id "r")]);
    return = Ast.TInt };
  { Ast.name = "pi"; param = [("n", Ast.TInt)];
    body =
    (Ast.Seq
       [(Ast.Call ("print_int", [(Ast.Id "n")])); (Ast.Call ("print_ln", []))
         ]);
    return = Ast.TUnit };
  { Ast.name = "main"; param = [];
    body =
    (Ast.Seq
       [(Ast.Let ("p", Ast.TInt,
           (Ast.Binary (Ast.Sub,
              (Ast.Call ("pow",
                 [(Ast.Const (Ast.CInt 2)); (Ast.Const (Ast.CInt 63))])),
              (Ast.Const (Ast.CInt 25))))
           ));
         (Ast.Let ("q", Ast.TInt,
            (Ast.Binary (Ast.Sub,
               (Ast.Call ("pow",
                  [(Ast.Const (Ast.CInt 2)); (Ast.Const (Ast.CInt 31))])),
               (Ast.Const (Ast.CInt 1))))
            ));
         (Ast.Call ("pi", [(Ast.Id "p")]));
         (Ast.Call ("pi", [(Ast.Id "q")]));
         (Ast.Call ("pi", [(Ast.Call ("gcd", [(Ast.Id "p"); (Ast.Id "q")]))]
            ))
         ]);
    return = Ast.TUnit }
  ]