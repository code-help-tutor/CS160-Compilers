WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
[
  {
    Ast.name = "alloc";
    param = [ ("f", Ast.TInt) ];
    body = Ast.Seq [ Ast.Call ("alloc", [ Ast.Id "f" ]) ];
    return = Ast.TArr;
  };
  {
    Ast.name = "main";
    param = [];
    body = Ast.Seq [ Ast.Const Ast.CUnit ];
    return = Ast.TUnit;
  };
]
