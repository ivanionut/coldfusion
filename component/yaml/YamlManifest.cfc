import component.ManifestComponent;

component
	accessors = true
    displayname = 'YamlManifest'
    extends = 'app.Component'
{

	property ManifestComponent context;
	property struct file;

	public app.ManifestConfig function init(ManifestComponent context)
	{

		/*
			set it request of will get containers
		*/
		setContext(context);

		return this;
	}

	public struct function getGlobalConfig()
	{

		var container = getContainer(this);

		var controller = container.getController('yaml').init(expandPath( '/component/yaml/lib/lib/jyaml-1.3.jar' ));

		return controller.load(expandPath('/config/config.yaml'));

	}

	public struct function getConfig(required String nameConfig)
	{

		var container = getContainer(this);

		var controller = container.getController('yaml').init(expandPath( '/component/yaml/lib/lib/jyaml-1.3.jar' ));

		return controller.load(expandPath('config/#nameConfig#.yaml'));
	}

	public Component function load(required String nameFile)
	{
		setFile(getConfig(nameFile));

		return this;
	}

	public any function getKey(any key)
	{
		var file = getFile();
		for(single in key){
			file = file[single];
		}
		return file;
	}

}

