package main

import (
	"github.com/MustWin/baremetal-sdk-go"
	"github.com/stretchr/testify/mock"
)

type MockClient struct {
	mock.Mock
}

func (m *MockClient) CreateUser(name, description string, options ...baremetal.Options) (*baremetal.IdentityResource, error) {
	args := m.Called(name, description)
	return args.Get(0).(*baremetal.IdentityResource), args.Error(1)
}

func (m *MockClient) GetUser(id string) (*baremetal.IdentityResource, error) {
	args := m.Called(id)
	u, _ := args.Get(0).(*baremetal.IdentityResource)
	return u, args.Error(1)
}

func (m *MockClient) UpdateUser(id, description string, opts ...baremetal.Options) (*baremetal.IdentityResource, error) {
	args := m.Called(id, description)
	u, _ := args.Get(0).(*baremetal.IdentityResource)
	return u, args.Error(1)
}

func (m *MockClient) DeleteUser(id string, opts ...baremetal.Options) error {
	args := m.Called(id)
	return args.Error(0)
}

func (m *MockClient) CreateGroup(name, description string, options ...baremetal.Options) (*baremetal.IdentityResource, error) {
	args := m.Called(name, description)
	return args.Get(0).(*baremetal.IdentityResource), args.Error(1)
}

func (m *MockClient) GetGroup(id string) (*baremetal.IdentityResource, error) {
	args := m.Called(id)
	u, _ := args.Get(0).(*baremetal.IdentityResource)
	return u, args.Error(1)
}

func (m *MockClient) UpdateGroup(id, description string, opts ...baremetal.Options) (*baremetal.IdentityResource, error) {
	args := m.Called(id, description)
	u, _ := args.Get(0).(*baremetal.IdentityResource)
	return u, args.Error(1)
}

func (m *MockClient) DeleteGroup(id string, opts ...baremetal.Options) error {
	args := m.Called(id)
	return args.Error(0)
}

func (m *MockClient) CreatePolicy(name, description string, statements []string, options ...baremetal.Options) (*baremetal.Policy, error) {
	args := m.Called(name, description, statements)
	return args.Get(0).(*baremetal.Policy), args.Error(1)
}

func (m *MockClient) GetPolicy(id string) (*baremetal.Policy, error) {
	args := m.Called(id)
	u, _ := args.Get(0).(*baremetal.Policy)
	return u, args.Error(1)
}

func (m *MockClient) UpdatePolicy(id, description string, statements []string, opts ...baremetal.Options) (*baremetal.Policy, error) {
	args := m.Called(id, description, statements)
	u, _ := args.Get(0).(*baremetal.Policy)
	return u, args.Error(1)
}

func (m *MockClient) DeletePolicy(id string, opts ...baremetal.Options) error {
	args := m.Called(id)
	return args.Error(0)
}

func (m *MockClient) CreateCompartment(name, description string, options ...baremetal.Options) (*baremetal.IdentityResource, error) {
	args := m.Called(name, description)
	return args.Get(0).(*baremetal.IdentityResource), args.Error(1)
}

func (m *MockClient) GetCompartment(id string) (*baremetal.IdentityResource, error) {
	args := m.Called(id)
	u, _ := args.Get(0).(*baremetal.IdentityResource)
	return u, args.Error(1)
}

func (m *MockClient) UpdateCompartment(id, description string, opts ...baremetal.Options) (*baremetal.IdentityResource, error) {
	args := m.Called(id, description)
	u, _ := args.Get(0).(*baremetal.IdentityResource)
	return u, args.Error(1)
}

func (m *MockClient) ListShapes(compartmentID string, opt ...baremetal.Options) (*baremetal.ShapeList, error) {
	args := m.Called(compartmentID, opt)
	u, _ := args.Get(0).(*baremetal.ShapeList)
	return u, args.Error(1)

}

func (m *MockClient) ListVnicAttachments(compartmentID string, opt ...baremetal.Options) (*baremetal.VnicAttachmentList, error) {
	args := m.Called(compartmentID, opt)
	u, _ := args.Get(0).(*baremetal.VnicAttachmentList)
	return u, args.Error(1)
}

func (m *MockClient) CreateCpe(compartmentID, displayName, IPAddress string, opt ...baremetal.Options) (*baremetal.Cpe, error) {
	args := m.Called(compartmentID, displayName, IPAddress, opt)
	u, _ := args.Get(0).(*baremetal.Cpe)
	return u, args.Error(1)
}

func (m *MockClient) GetCpe(cpeID string, opt ...baremetal.Options) (*baremetal.Cpe, error) {
	args := m.Called(cpeID, opt)
	u, _ := args.Get(0).(*baremetal.Cpe)
	return u, args.Error(1)
}

func (m *MockClient) DeleteCpe(cpeID string, opt ...baremetal.Options) error {
	args := m.Called(cpeID)
	return args.Error(0)
}

func (m *MockClient) CreateVolume(availabilityDomain, compartmentID string, opt ...baremetal.Options) (*baremetal.Volume, error) {
	args := m.Called(availabilityDomain, compartmentID, opt)
	u, _ := args.Get(0).(*baremetal.Volume)
	return u, args.Error(1)
}

func (m *MockClient) GetVolume(id string, opt ...baremetal.Options) (*baremetal.Volume, error) {
	args := m.Called(id, opt)
	u, _ := args.Get(0).(*baremetal.Volume)
	return u, args.Error(1)
}

func (m *MockClient) UpdateVolume(id string, opt ...baremetal.Options) (*baremetal.Volume, error) {
	args := m.Called(id, opt)
	u, _ := args.Get(0).(*baremetal.Volume)
	return u, args.Error(1)
}

func (m *MockClient) DeleteVolume(id string, opt ...baremetal.Options) error {
	args := m.Called(id)
	return args.Error(0)
}

func (m *MockClient) ListVolumes(compartmentID string, opt ...baremetal.Options) (*baremetal.VolumeList, error) {
	args := m.Called(compartmentID, opt)
	u, _ := args.Get(0).(*baremetal.VolumeList)
	return u, args.Error(1)
}

func (m *MockClient) AttachVolume(compartmentID, instanceID, attachmentType, volumeID string, opt ...baremetal.Options) (*baremetal.VolumeAttachment, error) {
	args := m.Called(compartmentID, instanceID, attachmentType, volumeID, opt)
	u, _ := args.Get(0).(*baremetal.VolumeAttachment)
	return u, args.Error(1)
}

func (m *MockClient) GetVolumeAttachment(id string, opt ...baremetal.Options) (*baremetal.VolumeAttachment, error) {
	args := m.Called(id, opt)
	u, _ := args.Get(0).(*baremetal.VolumeAttachment)
	return u, args.Error(1)
}

func (m *MockClient) DetachVolume(id string, opt ...baremetal.Options) error {
	args := m.Called(id)
	return args.Error(0)
}

func (m *MockClient) LaunchInstance(availabilityDomain, compartmentID, image,
	shape, subnetID string, metadata map[string]string, opts ...baremetal.Options) (inst *baremetal.Instance, e error) {
	args := m.Called(availabilityDomain, compartmentID, image, shape, subnetID, metadata, opts)
	u, _ := args.Get(0).(*baremetal.Instance)
	return u, args.Error(1)
}

func (m *MockClient) GetInstance(instanceID string) (inst *baremetal.Instance, e error) {
	args := m.Called(instanceID)
	u, _ := args.Get(0).(*baremetal.Instance)
	return u, args.Error(1)
}

func (m *MockClient) UpdateInstance(instanceID string, opts ...baremetal.Options) (inst *baremetal.Instance, e error) {
	args := m.Called(instanceID, opts)
	u, _ := args.Get(0).(*baremetal.Instance)
	return u, args.Error(1)
}

func (m *MockClient) TerminateInstance(instanceID string, opts ...baremetal.Options) (e error) {
	args := m.Called(instanceID, opts)
	return args.Error(0)
}
