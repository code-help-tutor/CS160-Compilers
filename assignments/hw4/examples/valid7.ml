WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
[
  {
    Ast.name = "main";
    param = [];
    body =
      Ast.Seq
        [
          Ast.Let
            ( "b",
              Ast.TBool,
              Ast.Binary
                (Ast.Neq, Ast.Const (Ast.CInt 5), Ast.Const (Ast.CInt 3)) );
          Ast.Let
            ( "c",
              Ast.TBool,
              Ast.Binary (Ast.Eq, Ast.Id "b", Ast.Const (Ast.CBool false)) );
          Ast.Let ("x", Ast.TInt, Ast.Const (Ast.CInt 456));
          Ast.Seq
            [
              Ast.Let
                ( "y",
                  Ast.TBool,
                  Ast.Binary
                    ( Ast.And,
                      Ast.Binary (Ast.Lt, Ast.Id "x", Ast.Const (Ast.CInt 500)),
                      Ast.Id "c" ) );
              Ast.Ite
                ( Ast.Id "y",
                  Ast.Seq [ Ast.Call ("print_bool", [ Ast.Id "c" ]) ],
                  Ast.Seq [ Ast.Call ("print_int", [ Ast.Id "x" ]) ] );
            ];
          Ast.Const Ast.CUnit;
        ];
    return = Ast.TUnit;
  };
]
