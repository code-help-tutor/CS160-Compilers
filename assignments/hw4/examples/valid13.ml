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
          Ast.Let ("b", Ast.TArr, Ast.Call ("alloc", [ Ast.Const (Ast.CInt 5) ]));
          Ast.Let ("x", Ast.TInt, Ast.Const (Ast.CInt 45));
          Ast.Seq [ Ast.Write ("b", Ast.Id "x", Ast.Const (Ast.CInt 420)) ];
          Ast.Call ("print_int", [ Ast.Read ("b", Ast.Id "x") ]);
        ];
    return = Ast.TUnit;
  };
]
