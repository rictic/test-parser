[
#baseline
  [
  "...................
----------------------------------------------------------------------
Ran 19 tests in 2.181s

OK
  ",
  {:success_count => 19, :failure_count => 0}
  ],
  
#verbose mode...
  [
  "Should perform the same as reading, then parsing the header ... ok
testHeaderParsing (__main__.TestHTTPProtocol) ... ok
Attempting to parse a header that doesn't end in \\r\\n\\r\\n should raise a ValueError ... ok
A valid buffer read in shouldn't cause parse_header to complain ... ok
Grabbing the next header should leave all other data after the header ... ok
If two headers are in the buffer reading twice in a row should produce one header, then the next. ... ok

----------------------------------------------------------------------
Ran 6 tests in 0.003s

OK",
  {:failure_count => 0, :success_count => 6, 

#YAGNI has stripped this functionality right out...
#     :test_names => ["Should perform the same as reading, then parsing the header",
#                     "testHeaderParsing (__main__.TestHTTPProtocol)",
#                     "Attempting to parse a header that doesn't end in \\r\\n\\r\\n should raise a ValueError",
#                     "A valid buffer read in shouldn't cause parse_header to complain",
#                     "Grabbing the next header should leave all other data after the header",
#                     "If two headers are in the buffer reading twice in a row should produce one header, then the next."]}
  }],
#testing for an ERROR
  [
  "...E..
======================================================================
ERROR: A valid buffer read in shouldn't cause parse_header to complain
----------------------------------------------------------------------
Traceback (most recent call last):
  File \"test_http.py\", line 24, in testReadHeader
    header = self.http.read_header()
  File \"/Users/peter/Documents/Class Notes/2007s/Networking/labs/software/2/http/http.py\", line 124, in read_header
    match = find_header.match(self.buffer)
TypeError: expected string or buffer

----------------------------------------------------------------------
Ran 6 tests in 0.022s

FAILED (errors=1)",
  {
    :failure_count => 1,
    :success_count => 5,
    :failures => [{
      :file => "test_http.py",
      :line => 24,
      :error_type => "TypeError",
      :message => "expected string or buffer",
      :method => "testReadHeader",
      :test => "A valid buffer read in shouldn't cause parse_header to complain",  
    }],
  }],
#testing for FAIL
  [
  "....F.
======================================================================
FAIL: Grabbing the next header should leave all other data after the header
----------------------------------------------------------------------
Traceback (most recent call last):
  File \"test_http.py\", line 32, in testReadHeadersHandlesExtraDataProperly
    self.assertEqual(self.http.buffer,3)#data)
AssertionError: 'Lieutenant Commander' != 3

----------------------------------------------------------------------
Ran 6 tests in 0.003s

FAILED (failures=1)
",
  {
    :failure_count => 1,
    :success_count => 5,
    :failures => [{
      :file => "test_http.py",
      :line => 32,
      :error_type => "AssertionError",
      :message => "'Lieutenant Commander' != 3",
      :test => "Grabbing the next header should leave all other data after the header",
      :method => "testReadHeadersHandlesExtraDataProperly",
    }],
  },
  ],

#test multiple failures
  [
   "...EF.
======================================================================
ERROR: A valid buffer read in shouldn't cause parse_header to complain
----------------------------------------------------------------------
Traceback (most recent call last):
  File \"test_http.py\", line 24, in testReadHeader
    header = self.http.read_header()
  File \"/Users/peter/Documents/Class Notes/2007s/Networking/labs/software/2/http/http.py\", line 124, in read_header
    match = find_header.match(self.buffer)
TypeError: expected string or buffer

======================================================================
FAIL: Grabbing the next header should leave all other data after the header
----------------------------------------------------------------------
Traceback (most recent call last):
  File \"test_http.py\", line 32, in testReadHeadersHandlesExtraDataProperly
    self.assertEqual(self.http.buffer,3)#data)
AssertionError: 'Lieutenant Commander' != 3

----------------------------------------------------------------------
Ran 6 tests in 0.003s

FAILED (failures=1, errors=1)",
   {
     :success_count => 4,
     :failure_count => 2,
     :failures => [
       {
         :file => "test_http.py",
         :line => 32,
         :error_type => "AssertionError",
         :message => "'Lieutenant Commander' != 3",
         :test => "Grabbing the next header should leave all other data after the header",
         :method => "testReadHeadersHandlesExtraDataProperly",
       },
       {
         :file => "test_http.py",
         :line => 24,
         :error_type => "TypeError",
         :message => "expected string or buffer",
         :method => "testReadHeader",
         :test => "A valid buffer read in shouldn't cause parse_header to complain",  
       }
       ]
   }
  ]
]