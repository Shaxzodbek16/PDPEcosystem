// Status nomli enum hosil qiling unda applicationda kuzatilishi mumkin
// bo’lgan holatlarni kiriting misol uchun failed, loading, succes v h.k...

enum Status{
  failed("failed"),
  loading("loading"),
  success("success"),
  permission("permission"),
  unAuth("unAuth"),
  notFound("notFound");
  final String source;
  const Status(this.source);
}

void main(){
  for(Status i in Status.values){
    print(i.source);
  }
}
