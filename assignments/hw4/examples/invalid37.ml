WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
[
  {
    Ast.name = "print_ln";
    param = [];
    body = Ast.Seq [ Ast.Const Ast.CUnit ];
    return = Ast.TUnit;
  };
  {
    Ast.name = "main";
    param = [];
    body = Ast.Seq [ Ast.Call ("print_ln", []) ];
    return = Ast.TUnit;
  };
]
