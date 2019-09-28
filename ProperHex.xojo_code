#tag Module
Protected Module ProperHex
	#tag Method, Flags = &h21
		Private Function MBtoHexString(mb as memoryblock) As string
		  dim s as string
		  
		  for i as integer = 0 to mb.Size-1
		    dim hexDigit as string = hex(mb.byte(i))
		    if hexdigit.Len() < 2 then hexdigit = "0" + hexdigit
		    s = s + hexdigit
		  next
		  
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(d as double) As String
		  dim mb as new memoryblock(8)
		  mb.LittleEndian = false
		  
		  mb.DoubleValue(0) = d
		  
		  return MBtoHexString( mb) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(i as int16) As String
		  dim mb as new memoryblock(2)
		  mb.LittleEndian = false
		  
		  mb.Int16Value(0) = i
		  
		  return MBtoHexString( mb) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(i as int32) As String
		  dim mb as new memoryblock(4)
		  mb.LittleEndian = false
		  
		  mb.Int32Value(0) = i
		  
		  return MBtoHexString( mb) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(i as int64) As String
		  dim mb as new memoryblock(8)
		  mb.LittleEndian = false
		  
		  mb.Int64Value(0) = i
		  
		  return MBtoHexString( mb) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(i as int8) As String
		  dim mb as new memoryblock(1)
		  mb.LittleEndian = false
		  
		  mb.Int8Value(0) = i
		  
		  return MBtoHexString( mb) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(s as single) As String
		  dim mb as new memoryblock(4)
		  mb.LittleEndian = false
		  
		  mb.SingleValue(0) = s
		  
		  return MBtoHexString( mb) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(i as Uint16) As String
		  dim mb as new memoryblock(2)
		  mb.LittleEndian = false
		  
		  mb.UInt16Value(0) = i
		  
		  return MBtoHexString( mb) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(i as Uint32) As String
		  dim mb as new memoryblock(4)
		  mb.LittleEndian = false
		  
		  mb.UInt32Value(0) = i
		  
		  return MBtoHexString(mb) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(i as Uint64) As String
		  dim mb as new memoryblock(8)
		  mb.LittleEndian = false
		  
		  mb.UInt64Value(0) = i
		  
		  return MBtoHexString( mb) 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHex(i as Uint8) As String
		  dim mb as new memoryblock(1)
		  mb.LittleEndian = false
		  
		  mb.UInt8Value(0) = i
		  
		  return MBtoHexString( mb) 
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
