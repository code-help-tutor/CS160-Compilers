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
          Ast.Let ("x", Ast.TInt, Ast.Const (Ast.CInt 45));
          Ast.Assign ("x", Ast.Const (Ast.CInt 23));
          Ast.Let ("t", Ast.TUnit, Ast.Call ("print_int", [ Ast.Id "x" ]));
          Ast.Id "t";
        ];
    return = Ast.TUnit;
  };
]
