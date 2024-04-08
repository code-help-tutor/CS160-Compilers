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
          Ast.Call ("print_int", [ Ast.Read ("b", Ast.Const (Ast.CInt 0)) ]);
        ];
    return = Ast.TUnit;
  };
]
