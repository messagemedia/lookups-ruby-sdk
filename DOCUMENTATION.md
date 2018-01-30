# Getting started

The MessageMedia Lookups API provides a number of endpoints for validating the phone numbers you’re sending to by checking their validity, type and carrier records.

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build message_media_lookups.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install message_media_lookups-1.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=MessageMediaLookups-Ruby&workspaceName=MessageMediaLookups-Ruby&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0)

## How to Use

The following section explains how to use the MessageMediaLookups Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=MessageMediaLookups-Ruby&workspaceName=MessageMediaLookups&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=MessageMediaLookups-Ruby&workspaceName=MessageMediaLookups&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=MessageMediaLookups-Ruby&workspaceName=MessageMediaLookups&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the MessageMediaLookups gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'message_media_lookups', '~> 1.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=MessageMediaLookups-Ruby&workspaceName=MessageMediaLookups&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=MessageMediaLookups-Ruby&workspaceName=MessageMediaLookups&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=MessageMediaLookups-Ruby&workspaceName=MessageMediaLookups&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=MessageMediaLookups-Ruby&workspaceName=MessageMediaLookups&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=MessageMediaLookups-Ruby&workspaceName=MessageMediaLookups&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| basic_auth_user_name | The username to use with basic authentication |
| basic_auth_password | The password to use with basic authentication |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

client = MessageMediaLookups::MessageMediaLookupsClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Lookups-Ruby&workspaceName=MessageMediaLookups&projectName=message_media_lookups&gemName=message_media_lookups&gemVer=1.0.0&initLine=client%2520%253D%2520MessageMediaLookupsClient.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [LookupsController](#lookups_controller)

## <a name="lookups_controller"></a>![Class: ](https://apidocs.io/img/class.png ".LookupsController") LookupsController

### Get singleton instance

The singleton instance of the ``` LookupsController ``` class can be accessed from the API Client.

```ruby
lookups_controller = client.lookups
```

### <a name="get_lookup_a_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".LookupsController.get_lookup_a_phone_number") get_lookup_a_phone_number

> Use the Lookups API to find information about a phone number.
> A request to the lookups API has the following format:
> ```/v1/lookups/phone/{phone_number}?options={carrier,type}```
> The `{phone_number}` parameter is a required field and should be set to the phone number to be looked up.
> The options query parameter can also be used to request additional information about the phone number.
> By default, a request will only return the `country_code` and `phone_number` properties in the response.
> To request details about the the carrier, include `carrier` as a value of the options parameter.
> To request details about the type, include `type` as a value of the options parameter. To pass multiple values
> to the options parameter, use a comma separated list, i.e. `carrier,type`.
> A successful request to the lookups endpoint will return a response body as follows:
> ```json
> {
>   "country_code": "AU",
>   "phone_number": "+61491570156",
>   "type": "mobile",
>   "carrier": {
>     "name": "Telstra"
>   }
> }
> ```
> Each property in the response body is defined as follows:
> - ```country_code``` ISO ALPHA 2 country code of the phone number
> - ```phone_number``` E.164 formatted phone number
> - ```type``` The type of number. This can be ```"mobile"``` or ```"landline"```
> - ```carrier``` Holds information about the specific carrier (if available)
>   - ```name``` The carrier's name as reported by the network


```ruby
def get_lookup_a_phone_number(phone_number,
                                  options = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | The phone number to be looked up |
| options |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
phone_number = '+61491570156'
options = 'carrier,type'

result = lookups_controller.get_lookup_a_phone_number(phone_number, options)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 404 | Number was invalid |



[Back to List of Controllers](#list_of_controllers)
