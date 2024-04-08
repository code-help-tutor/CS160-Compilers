WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
open Ast

type binop_kind =
  | Arith (* integer arithmetic operators *)
  | Logic (* logical operator operators *)
  | EqNeq (* equality and inequality *)
  | Comp (* integer comparisons *)

let kind_of_binop = function
  | Add | Sub | Mul | Div -> Arith
  | And | Or -> Logic
  | Eq | Neq -> EqNeq
  | Gt | Geq | Lt | Leq -> Comp
