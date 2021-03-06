import app.Entity;

component
    displayname = 'FormManifest'
    extends = 'app.Component'
{


	public struct function validate(Entity entity)
	{

		/*
			validated and parse required e scenarios
		*/
		var statusValidate = getService('form').validateEntityByForm(entity);

		var response = {};
		if(structCount(statusValidate) > 0){

			for(single in statusValidate){

				var temp = statusValidate[single].error;

				structInsert(response, single, {'error' : temp});

			}

		}

		return response;

	}

	public String function setError(Any data, String field)
	{

		if(structKeyExists(data, field)){

			if(structKeyExists(data[field], 'error')){

				if(isArray(data[field].error)){

					var message = '';

					for(single in data[field].error){

						message &= ' <br /> '&single;
					}

					return message;

				}

		  	}

		}

	}


}
