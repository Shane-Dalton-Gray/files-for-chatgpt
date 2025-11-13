let isString = entityId => typeof value === 'string' || value instanceof String;

var id = entityId;
var result;

if(isString){
  await getEntityIdForString.trigger({
    onSuccess:function(data){
      id = data.message
    }
  });
} 

if(docType){
  _ = await createCoreDocument.trigger({
    additionalScope:{
      docType: docType,
      entityId: id
    }, onSuccess:function(data){
      result =  data
    }
  })
}

return result;