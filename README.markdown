NO LONGER MAINTAINED, USE THIS GEM: https://rubygems.org/gems/telesign/versions/0.0.2

Telesign
========

Telesign is a Rails plugin for interacting with the [Telesign](http://telesign.com) Phone Verification service. 

Download &amp; Initialization
-----------------------------

Using [Git](http://git-scm.com) clone the project:

      $ git clone http://github.com/pcunnane/telesign.git

And then somewhere in a Rails initializer:

      Telesign::ApiRequest.customer_id = <Your Telesign CustomerID>
      Telesign::ApiRequest.authentication_id = <Your Telesign AuthenticationID>

Sample Usage
------------

PhoneID and Phone Verification calls require a phone object.

    phone = Telesign::Phone.new("555555555", "United States")
        
Telesign provides a PhoneID service for identifying phone numbers. 
This is useful for stopping users from entering phone numbers which are easily obtained, such as Pre-Paid Mobile or Non-Fixed VOIP phones.

    identity = Telesign.identify(phone)

    identity.country
    => "US"

    identity.city
    => "San Francisco"

    identity.phone_type == Telesign::PhoneType::MOBILE
    => true
        
Phone Verification requires a random verification code to be read to the callee.
      
    code = Telesign.verification_code
     
    # Calls the phone number provided and reads the callee the verification code
    verification = Telesign.call(phone, code)

    reference_id = verification.reference_id

You can also verify using a text message:

    verification = Telesign.sms(phone, code)

After calling the user, you should save the random code and the reference_id for later use. The random code will be used for comparison with the code entered by your user through a form, which will determine whether they are phone verified or not. 

You can also request the status of a specific call, using the previously saved reference_id:
    
    status = Telesign.status(reference_id)
    
    status.answered?
    => true

Contributing
------------

[Fork](http://help.github.com/forking) the project and submit pull requests. 


